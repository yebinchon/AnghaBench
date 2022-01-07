
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int ) ;
 int strv_equal (char**,char**) ;
 char** strv_skip (char**,size_t) ;

__attribute__((used)) static void test_strv_skip_one(char **a, size_t n, char **b) {
        a = strv_skip(a, n);
        assert_se(strv_equal(a, b));
}
