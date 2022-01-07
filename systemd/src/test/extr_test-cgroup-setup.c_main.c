
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_is_wanted () ;
 int test_is_wanted_print (int) ;
 int test_setup_logging (int ) ;

int main(void) {
        test_setup_logging(LOG_DEBUG);

        test_is_wanted_print(1);
        test_is_wanted_print(0);
        test_is_wanted();

        return 0;
}
