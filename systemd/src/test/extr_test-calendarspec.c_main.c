
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CalendarSpec ;


 int ERANGE ;
 int assert_se (int) ;
 int calendar_spec_from_string (char*,int **) ;
 int test_hourly_bug_4031 () ;
 int test_next (char*,char*,int,int) ;
 int test_one (char*,char*) ;
 int test_timestamp () ;

int main(int argc, char* argv[]) {
        CalendarSpec *c;

        test_one("Sat,Thu,Mon-Wed,Sat-Sun", "Mon..Thu,Sat,Sun *-*-* 00:00:00");
        test_one("Sat,Thu,Mon..Wed,Sat..Sun", "Mon..Thu,Sat,Sun *-*-* 00:00:00");
        test_one("Mon,Sun 12-*-* 2,1:23", "Mon,Sun 2012-*-* 01,02:23:00");
        test_one("Wed *-1", "Wed *-*-01 00:00:00");
        test_one("Wed-Wed,Wed *-1", "Wed *-*-01 00:00:00");
        test_one("Wed..Wed,Wed *-1", "Wed *-*-01 00:00:00");
        test_one("Wed, 17:48", "Wed *-*-* 17:48:00");
        test_one("Wednesday,", "Wed *-*-* 00:00:00");
        test_one("Wed-Sat,Tue 12-10-15 1:2:3", "Tue..Sat 2012-10-15 01:02:03");
        test_one("Wed..Sat,Tue 12-10-15 1:2:3", "Tue..Sat 2012-10-15 01:02:03");
        test_one("*-*-7 0:0:0", "*-*-07 00:00:00");
        test_one("10-15", "*-10-15 00:00:00");
        test_one("monday *-12-* 17:00", "Mon *-12-* 17:00:00");
        test_one("Mon,Fri *-*-3,1,2 *:30:45", "Mon,Fri *-*-01,02,03 *:30:45");
        test_one("12,14,13,12:20,10,30", "*-*-* 12,13,14:10,20,30:00");
        test_one("mon,fri *-1/2-1,3 *:30:45", "Mon,Fri *-01/2-01,03 *:30:45");
        test_one("03-05 08:05:40", "*-03-05 08:05:40");
        test_one("08:05:40", "*-*-* 08:05:40");
        test_one("05:40", "*-*-* 05:40:00");
        test_one("Sat,Sun 12-05 08:05:40", "Sat,Sun *-12-05 08:05:40");
        test_one("Sat,Sun 08:05:40", "Sat,Sun *-*-* 08:05:40");
        test_one("2003-03-05 05:40", "2003-03-05 05:40:00");
        test_one("2003-03-05", "2003-03-05 00:00:00");
        test_one("03-05", "*-03-05 00:00:00");
        test_one("hourly", "*-*-* *:00:00");
        test_one("daily", "*-*-* 00:00:00");
        test_one("monthly", "*-*-01 00:00:00");
        test_one("weekly", "Mon *-*-* 00:00:00");
        test_one("minutely", "*-*-* *:*:00");
        test_one("quarterly", "*-01,04,07,10-01 00:00:00");
        test_one("semi-annually", "*-01,07-01 00:00:00");
        test_one("annually", "*-01-01 00:00:00");
        test_one("*:2/3", "*-*-* *:02/3:00");
        test_one("2015-10-25 01:00:00 uTc", "2015-10-25 01:00:00 UTC");
        test_one("2015-10-25 01:00:00 Asia/Vladivostok", "2015-10-25 01:00:00 Asia/Vladivostok");
        test_one("weekly Pacific/Auckland", "Mon *-*-* 00:00:00 Pacific/Auckland");
        test_one("2016-03-27 03:17:00.4200005", "2016-03-27 03:17:00.420001");
        test_one("2016-03-27 03:17:00/0.42", "2016-03-27 03:17:00/0.420000");
        test_one("9..11,13:00,30", "*-*-* 09..11,13:00,30:00");
        test_one("1..3-1..3 1..3:1..3", "*-01..03-01..03 01..03:01..03:00");
        test_one("00:00:1.125..2.125", "*-*-* 00:00:01.125000..02.125000");
        test_one("00:00:1.0..3.8", "*-*-* 00:00:01..03");
        test_one("00:00:01..03", "*-*-* 00:00:01..03");
        test_one("00:00:01/2,02..03", "*-*-* 00:00:01/2,02..03");
        test_one("*-*~1 Utc", "*-*~01 00:00:00 UTC");
        test_one("*-*~05,3 ", "*-*~03,05 00:00:00");
        test_one("*-*~* 00:00:00", "*-*-* 00:00:00");
        test_one("Monday", "Mon *-*-* 00:00:00");
        test_one("Monday *-*-*", "Mon *-*-* 00:00:00");
        test_one("*-*-*", "*-*-* 00:00:00");
        test_one("*:*:*", "*-*-* *:*:*");
        test_one("*:*", "*-*-* *:*:00");
        test_one("12:*", "*-*-* 12:*:00");
        test_one("*:30", "*-*-* *:30:00");
        test_one("93..00-*-*", "1993..2000-*-* 00:00:00");
        test_one("00..07-*-*", "2000..2007-*-* 00:00:00");
        test_one("*:20..39/5", "*-*-* *:20..35/5:00");
        test_one("00:00:20..40/1", "*-*-* 00:00:20..40");
        test_one("*~03/1,03..05", "*-*~03/1,03..05 00:00:00");

        test_one("@1493187147", "2017-04-26 06:12:27 UTC");
        test_one("@1493187147 UTC", "2017-04-26 06:12:27 UTC");
        test_one("@0", "1970-01-01 00:00:00 UTC");
        test_one("@0 UTC", "1970-01-01 00:00:00 UTC");

        test_next("2016-03-27 03:17:00", "", 12345, 1459048620000000);
        test_next("2016-03-27 03:17:00", "CET", 12345, 1459041420000000);
        test_next("2016-03-27 03:17:00", "EET", 12345, -1);
        test_next("2016-03-27 03:17:00 UTC", ((void*)0), 12345, 1459048620000000);
        test_next("2016-03-27 03:17:00 UTC", "", 12345, 1459048620000000);
        test_next("2016-03-27 03:17:00 UTC", "CET", 12345, 1459048620000000);
        test_next("2016-03-27 03:17:00 UTC", "EET", 12345, 1459048620000000);
        test_next("2016-03-27 03:17:00.420000001 UTC", "EET", 12345, 1459048620420000);
        test_next("2016-03-27 03:17:00.4200005 UTC", "EET", 12345, 1459048620420001);
        test_next("2015-11-13 09:11:23.42", "EET", 12345, 1447398683420000);
        test_next("2015-11-13 09:11:23.42/1.77", "EET", 1447398683420000, 1447398685190000);
        test_next("2015-11-13 09:11:23.42/1.77", "EET", 1447398683419999, 1447398683420000);
        test_next("Sun 16:00:00", "CET", 1456041600123456, 1456066800000000);
        test_next("*-04-31", "", 12345, -1);
        test_next("2016-02~01 UTC", "", 12345, 1456704000000000);
        test_next("Mon 2017-05~01..07 UTC", "", 12345, 1496016000000000);
        test_next("Mon 2017-05~07/1 UTC", "", 12345, 1496016000000000);
        test_next("2017-08-06 9,11,13,15,17:00 UTC", "", 1502029800000000, 1502031600000000);
        test_next("2017-08-06 9..17/2:00 UTC", "", 1502029800000000, 1502031600000000);
        test_next("2016-12-* 3..21/6:00 UTC", "", 1482613200000001, 1482634800000000);
        test_next("2017-09-24 03:30:00 Pacific/Auckland", "", 12345, 1506177000000000);

        test_next("2017-09-24 02:30:00 Pacific/Auckland", "", 12345, -1);
        test_next("2017-04-02 02:30:00 Pacific/Auckland", "", 12345, 1491053400000000);

        test_next("2017-04-02 02:30:00 Pacific/Auckland", "", 1491053400000000, -1);
        test_next("2017-04-02 03:30:00 Pacific/Auckland", "", 12345, 1491060600000000);

        test_next("2017-09-09 20:42:00 Pacific/Auckland", "", 12345, 1504946520000000);
        test_next("2017-09-09 20:42:00 Pacific/Auckland", "EET", 12345, 1504946520000000);

        assert_se(calendar_spec_from_string("test", &c) < 0);
        assert_se(calendar_spec_from_string(" utc", &c) < 0);
        assert_se(calendar_spec_from_string("    ", &c) < 0);
        assert_se(calendar_spec_from_string("", &c) < 0);
        assert_se(calendar_spec_from_string("7", &c) < 0);
        assert_se(calendar_spec_from_string("121212:1:2", &c) < 0);
        assert_se(calendar_spec_from_string("2000-03-05.23 00:00:00", &c) < 0);
        assert_se(calendar_spec_from_string("2000-03-05 00:00.1:00", &c) < 0);
        assert_se(calendar_spec_from_string("00:00:00/0.00000001", &c) < 0);
        assert_se(calendar_spec_from_string("00:00:00.0..00.9", &c) < 0);
        assert_se(calendar_spec_from_string("2016~11-22", &c) < 0);
        assert_se(calendar_spec_from_string("*-*~5/5", &c) < 0);
        assert_se(calendar_spec_from_string("Monday.. 12:00", &c) < 0);
        assert_se(calendar_spec_from_string("Monday..", &c) < 0);
        assert_se(calendar_spec_from_string("-00:+00/-5", &c) < 0);
        assert_se(calendar_spec_from_string("00:+00/-5", &c) < 0);
        assert_se(calendar_spec_from_string("2016- 11- 24 12: 30: 00", &c) < 0);
        assert_se(calendar_spec_from_string("*~29", &c) < 0);
        assert_se(calendar_spec_from_string("*~16..31", &c) < 0);
        assert_se(calendar_spec_from_string("12..1/2-*", &c) < 0);
        assert_se(calendar_spec_from_string("*:05..05", &c) < 0);
        assert_se(calendar_spec_from_string("*:05..10/6", &c) < 0);
        assert_se(calendar_spec_from_string("20/4:00", &c) < 0);
        assert_se(calendar_spec_from_string("00:00/60", &c) < 0);
        assert_se(calendar_spec_from_string("00:00:2300", &c) < 0);
        assert_se(calendar_spec_from_string("00:00:18446744073709551615", &c) < 0);
        assert_se(calendar_spec_from_string("@88588582097858858", &c) == -ERANGE);

        test_timestamp();
        test_hourly_bug_4031();

        return 0;
}
