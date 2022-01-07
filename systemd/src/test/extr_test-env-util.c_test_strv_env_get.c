
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** STRV_MAKE (char*,char*,char*,char*) ;
 int assert_se (int ) ;
 int streq (int ,char*) ;
 int strv_env_get (char**,char*) ;

__attribute__((used)) static void test_strv_env_get(void) {
        char **l;

        l = STRV_MAKE("ONE_OR_TWO=1", "THREE=3", "ONE_OR_TWO=2", "FOUR=4");

        assert_se(streq(strv_env_get(l, "ONE_OR_TWO"), "2"));
        assert_se(streq(strv_env_get(l, "THREE"), "3"));
        assert_se(streq(strv_env_get(l, "FOUR"), "4"));
}
