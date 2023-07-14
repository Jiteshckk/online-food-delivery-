using (MySqlConnection con = new MySqlConnection(constr))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select count(*) from add_property where type='BUY'", con);
            MySqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                string Value = rd[0].ToString();
                if (Value == "")
                {
                    lblIDbuy.Text = "00";
                }
                else
                {
                    lblIDbuy.Text = rd[0].ToString();
                    lblIDbuy.Text = "00" + Convert.ToInt32(lblID.Text).ToString(); ;
                }
            }
            con.Close();
        }
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        <add name="constr" connectionString="Server=localhost;Port=3306;Database=database name;Uid=userid;Pwd=yourpassword;" providerName="MySql.Data.MySqlClient"/>