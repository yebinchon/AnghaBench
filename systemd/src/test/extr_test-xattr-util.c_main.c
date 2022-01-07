
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_fgetxattrat_fake () ;
 int test_getcrtime () ;
 int test_setup_logging (int ) ;

int main(void) {
        test_setup_logging(LOG_DEBUG);

        test_fgetxattrat_fake();
        test_getcrtime();

        return 0;
}
