
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_one (char*) ;
 int test_one_noutc (char*) ;
 int test_setup_logging (int ) ;
 int test_should_fail (char*) ;
 int test_should_parse (char*) ;
 int test_should_pass (char*) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_one("17:41");
        test_one("18:42:44");
        test_one("18:42:44.0");
        test_one("18:42:44.999999999999");
        test_one("12-10-02 12:13:14");
        test_one("12-10-2 12:13:14");
        test_one("12-10-03 12:13");
        test_one("2012-12-30 18:42");
        test_one("2012-10-02");
        test_one("Tue 2012-10-02");
        test_one("yesterday");
        test_one("today");
        test_one("tomorrow");
        test_one_noutc("16:20 UTC");
        test_one_noutc("16:20 Asia/Seoul");
        test_one_noutc("tomorrow Asia/Seoul");
        test_one_noutc("2012-12-30 18:42 Asia/Seoul");
        test_one_noutc("now");
        test_one_noutc("+2d");
        test_one_noutc("+2y 4d");
        test_one_noutc("5months ago");
        test_one_noutc("@1395716396");
        test_should_parse("1970-1-1 UTC");
        test_should_pass("1970-1-1 00:00:01 UTC");
        test_should_fail("1969-12-31 UTC");
        test_should_fail("-100y");
        test_should_fail("today UTC UTC");
        test_should_fail("now Asia/Seoul");
        test_should_fail("+2d Asia/Seoul");
        test_should_fail("@1395716396 Asia/Seoul");
        return 0;
}
