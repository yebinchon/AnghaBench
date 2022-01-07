
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ELEMENTSOF (int *) ;
 int * option_tests ;
 int test_invalid_buffer_length () ;
 int test_message_init () ;
 int test_option_set () ;
 int test_options (int *) ;

int main(int argc, char *argv[]) {
        unsigned i;

        test_invalid_buffer_length();
        test_message_init();

        test_options(((void*)0));

        for (i = 0; i < ELEMENTSOF(option_tests); i++)
                test_options(&option_tests[i]);

        test_option_set();

        return 0;
}
