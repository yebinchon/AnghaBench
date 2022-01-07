
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_setup_logging (int ) ;
 int test_specifier_escape () ;
 int test_specifier_escape_strv () ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_specifier_escape();
        test_specifier_escape_strv();

        return 0;
}
