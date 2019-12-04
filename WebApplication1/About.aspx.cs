using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncoded_Click(object sender, EventArgs e)
        {
            string teht = encode(89);
            txtcodded.Text = encode(int.Parse(txtNumber.Text.ToString()));
        }

        protected void btndecoded_Click(object sender, EventArgs e)
        {
            txtdecoded.Text = decode(txtLastByte.Text, txtFirstByte.Text);
        }

        public static string encode(int unEncoded)
        {
            int intermediateDec = unEncoded + 8192;
            int firstSevenBits = intermediateDec & 0x007F; 
            int lastSevenBits = intermediateDec & 0x3F80; 
            int encoded = firstSevenBits + (lastSevenBits << 1);
            return encoded.ToString("X");
        }
            
        public static string decode(string lastByte, string firstByte)
        {
            byte last = Convert.ToByte(lastByte, 16);
            byte first = Convert.ToByte(firstByte, 16);
            short intermediateDec = (short)(last + (first << 7));
            short decoded = (short)(intermediateDec - 8192);
            return decoded.ToString();
        }

    }
}