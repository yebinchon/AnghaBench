
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int strlen_ptr (char*) ;

__attribute__((used)) static void test_strlen_ptr(void) {
        assert_se(strlen_ptr("foo") == 3);
        assert_se(strlen_ptr("") == 0);
        assert_se(strlen_ptr(((void*)0)) == 0);
}
