
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int fstab_find_pri (char*,int*) ;

__attribute__((used)) static void test_fstab_find_pri(void) {
        int pri = -1;

        assert_se(fstab_find_pri("pri", &pri) == 0);
        assert_se(pri == -1);

        assert_se(fstab_find_pri("pri=11", &pri) == 1);
        assert_se(pri == 11);

        assert_se(fstab_find_pri("opt,pri=12,opt", &pri) == 1);
        assert_se(pri == 12);

        assert_se(fstab_find_pri("opt,opt,pri=12,pri=13", &pri) == 1);
        assert_se(pri == 13);
}
