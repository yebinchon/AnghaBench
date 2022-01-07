
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int print_separator () ;
 int test_cat_files () ;
 int test_setup_logging (int ) ;
 int test_terminal_urlify () ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_INFO);

        test_terminal_urlify();
        test_cat_files();

        print_separator();

        return 0;
}
