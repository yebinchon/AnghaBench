
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_open () ;
 int log_parse_environment () ;
 int test_extract_first_word () ;
 int test_extract_first_word_and_warn () ;
 int test_extract_many_words () ;

int main(int argc, char *argv[]) {
        log_parse_environment();
        log_open();

        test_extract_first_word();
        test_extract_first_word_and_warn();
        test_extract_many_words();

        return 0;
}
