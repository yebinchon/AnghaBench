
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int test_colors () ;
 int test_default_term_for_tty () ;
 int test_getttyname_malloc () ;
 int test_read_one_char () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_INFO);

        test_default_term_for_tty();
        test_read_one_char();
        test_getttyname_malloc();
        test_colors();

        return 0;
}
