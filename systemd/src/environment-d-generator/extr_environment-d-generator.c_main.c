
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int load_and_print () ;
 int log_error (char*) ;
 int log_error_errno (int,char*) ;
 int log_open () ;
 int log_parse_environment () ;

int main(int argc, char *argv[]) {
        int r;

        log_parse_environment();
        log_open();

        if (argc > 1) {
                log_error("This program takes no arguments.");
                return EXIT_FAILURE;
        }

        r = load_and_print();
        if (r < 0)
                log_error_errno(r, "Failed to load environment.d: %m");

        return r < 0 ? EXIT_FAILURE : EXIT_SUCCESS;
}
