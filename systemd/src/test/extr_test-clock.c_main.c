
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_clock_is_localtime () ;
 int test_clock_is_localtime_system () ;

int main(int argc, char *argv[]) {
        test_clock_is_localtime();
        test_clock_is_localtime_system();

        return 0;
}
