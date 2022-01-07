
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int printf (char*) ;
 int test_ra () ;
 int test_radv () ;
 int test_radv_prefix () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {

        test_setup_logging(LOG_DEBUG);

        test_radv_prefix();
        test_radv();
        test_ra();

        printf("* done\n");
        return 0;
}
