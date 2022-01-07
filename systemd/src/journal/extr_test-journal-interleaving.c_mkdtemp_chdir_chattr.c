
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FS_NOCOW_FL ;
 int assert_se (int) ;
 int chattr_path (char*,int ,int ,int *) ;
 scalar_t__ chdir (char*) ;
 int mkdtemp (char*) ;

__attribute__((used)) static void mkdtemp_chdir_chattr(char *path) {
        assert_se(mkdtemp(path));
        assert_se(chdir(path) >= 0);



        (void) chattr_path(path, FS_NOCOW_FL, FS_NOCOW_FL, ((void*)0));
}
