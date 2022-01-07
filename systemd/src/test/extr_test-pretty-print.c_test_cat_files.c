
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAT_FLAGS_MAIN_FILE_OPTIONAL ;
 int ENOENT ;
 int R_OK ;
 int * STRV_MAKE (char*,char*) ;
 scalar_t__ access (char*,int ) ;
 int assert_se (int) ;
 int cat_files (char*,int *,int ) ;

__attribute__((used)) static void test_cat_files(void) {
        assert_se(cat_files("/no/such/file", ((void*)0), 0) == -ENOENT);
        assert_se(cat_files("/no/such/file", ((void*)0), CAT_FLAGS_MAIN_FILE_OPTIONAL) == 0);

        if (access("/etc/fstab", R_OK) >= 0)
                assert_se(cat_files("/etc/fstab", STRV_MAKE("/etc/fstab", "/etc/fstab"), 0) == 0);
}
