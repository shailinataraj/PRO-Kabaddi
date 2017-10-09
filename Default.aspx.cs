using PRO_Kabaddi.Model;
using PRO_Kabaddi.Presenter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRO_Kabaddi
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Processes the number of teams to create a match schedule
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Scheduler scheduleType = new Scheduler(new RoundRobin());
            List<Match> matches = scheduleType.GenerateSchedule(Convert.ToInt16(txtTeamNumber.Text), Convert.ToInt16(txtMatchNumber.Text));
            
            gvSchedule.DataSource = matches;
            gvSchedule.DataBind();
        }

        protected void btnTeams_Click(object sender, EventArgs e)
        {
            List<Team> teams = new List<Team>();

            int teamNumber = Convert.ToInt16(txtTeamNumber.Text);
            for (int i = 0; i < teamNumber; i++)
            {
                teams.Add(new Team(i));
            }

            gvTeams.DataSource = teams;
            gvTeams.DataBind();

        }
    }
}