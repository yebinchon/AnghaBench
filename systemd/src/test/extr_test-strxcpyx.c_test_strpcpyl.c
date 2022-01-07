
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target ;


 int assert_se (int) ;
 int streq (char*,char*) ;
 size_t strpcpyl (char**,size_t,char*,char*,...) ;

__attribute__((used)) static void test_strpcpyl(void) {
        char target[25];
        char *s = target;
        size_t space_left;

        space_left = sizeof(target);
        space_left = strpcpyl(&s, space_left, "waldo", " test", " waldo. ", ((void*)0));
        space_left = strpcpyl(&s, space_left, "Banana", ((void*)0));

        assert_se(streq(target, "waldo test waldo. Banana"));
        assert_se(space_left == 1);
}
