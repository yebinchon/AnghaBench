
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_cescape () ;
 int test_cunescape () ;
 int test_setup_logging (int ) ;
 int test_shell_escape () ;
 int test_shell_maybe_quote () ;
 int test_xescape () ;
 int test_xescape_full (int) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_cescape();
        test_xescape();
        test_xescape_full(0);
        test_xescape_full(1);
        test_cunescape();
        test_shell_escape();
        test_shell_maybe_quote();

        return 0;
}
