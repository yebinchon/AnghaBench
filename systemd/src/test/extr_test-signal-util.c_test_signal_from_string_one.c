
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int signal_from_string (char const*) ;
 char* strjoina (char*,char const*) ;

__attribute__((used)) static void test_signal_from_string_one(const char *s, int val) {
        const char *p;

        assert_se(signal_from_string(s) == val);

        p = strjoina("SIG", s);
        assert_se(signal_from_string(p) == val);
}
