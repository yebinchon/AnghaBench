
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LOG_DEBUG ;
 int log_error_errno (int,char*) ;
 int loopback_setup () ;
 int test_setup_logging (int ) ;

int main(int argc, char* argv[]) {
        int r;

        test_setup_logging(LOG_DEBUG);

        r = loopback_setup();
        if (r < 0)
                log_error_errno(r, "loopback: %m");

        return r >= 0 ? EXIT_SUCCESS : EXIT_FAILURE;
}
