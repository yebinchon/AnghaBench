
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int streq_ptr (char*,char*) ;

__attribute__((used)) static void test_streq_ptr(void) {
        assert_se(streq_ptr(((void*)0), ((void*)0)));
        assert_se(!streq_ptr("abc", "cdef"));
}
