
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int test_proc_cmdline_get_bool () ;
 int test_proc_cmdline_get_key () ;
 int test_proc_cmdline_get_key_many () ;
 int test_proc_cmdline_given (int) ;
 int test_proc_cmdline_key_startswith () ;
 int test_proc_cmdline_key_streq () ;
 int test_proc_cmdline_override () ;
 int test_proc_cmdline_parse () ;
 int test_setup_logging (int ) ;

int main(void) {
        test_setup_logging(LOG_INFO);

        test_proc_cmdline_parse();
        test_proc_cmdline_override();
        test_proc_cmdline_given(0);

        test_proc_cmdline_given(1);
        test_proc_cmdline_key_streq();
        test_proc_cmdline_key_startswith();
        test_proc_cmdline_get_key();
        test_proc_cmdline_get_bool();
        test_proc_cmdline_get_key_many();

        return 0;
}
