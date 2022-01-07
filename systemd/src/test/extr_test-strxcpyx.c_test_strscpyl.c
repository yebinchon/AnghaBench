
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target ;


 int assert_se (int) ;
 int streq (char*,char*) ;
 size_t strscpyl (char*,size_t,char*,char*,char*,int *) ;

__attribute__((used)) static void test_strscpyl(void) {
        char target[25];
        size_t space_left;

        space_left = sizeof(target);
        space_left = strscpyl(target, space_left, "12345", "waldo", "waldo", ((void*)0));

        assert_se(streq(target, "12345waldowaldo"));
        assert_se(space_left == 10);
}
