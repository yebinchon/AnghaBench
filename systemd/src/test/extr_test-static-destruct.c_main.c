
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int LOG_INFO ;
 int assert_se (int) ;
 int bar ;
 int baz ;
 int foo ;
 int memory ;
 int static_destruct () ;
 int strdup (char*) ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_INFO);

        assert_se(memory = strdup("hallo"));

        assert_se(foo == 0 && bar == 0 && baz == 0);
        static_destruct();
        assert_se(foo == 1 && bar == 2 && baz == 3);

        return EXIT_SUCCESS;
}
