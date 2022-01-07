
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int IN_SET (int,int ,int) ;
 scalar_t__ access (char*,int ) ;
 int assert_se (int) ;
 int clock_is_localtime (int *) ;
 int log_info (char*,int) ;

__attribute__((used)) static void test_clock_is_localtime_system(void) {
        int r;
        r = clock_is_localtime(((void*)0));

        if (access("/etc/adjtime", F_OK) == 0) {
                log_info("/etc/adjtime exists, clock_is_localtime() == %i", r);


                assert_se(IN_SET(r, 0, 1));
        } else

                assert_se(r == 0);
}
