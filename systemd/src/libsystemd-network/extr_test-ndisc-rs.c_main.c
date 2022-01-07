
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_rs () ;
 int test_setup_logging (int ) ;
 int test_timeout () ;

int main(int argc, char *argv[]) {

        test_setup_logging(LOG_DEBUG);

        test_rs();
        test_timeout();

        return 0;
}
