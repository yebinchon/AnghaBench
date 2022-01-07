
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (scalar_t__) ;
 int path_equal_or_files_same (char const*,char const*,int ) ;
 scalar_t__ path_is_absolute (char const*) ;
 char* strjoina (char const*,char*,char const*) ;

__attribute__((used)) static bool chroot_symlinks_same(const char *root, const char *wd, const char *a, const char *b) {
        assert(path_is_absolute(wd));




        if (!root)
                root = "/";

        a = strjoina(path_is_absolute(a) ? root : wd, "/", a);
        b = strjoina(path_is_absolute(b) ? root : wd, "/", b);
        return path_equal_or_files_same(a, b, 0);
}
