
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rmdir_one (char const*,char const* const) ;

__attribute__((used)) static int remove_subdirs(const char *root, const char *const *subdirs) {
        int r, q;




        if (!subdirs[0])
                return 0;

        r = remove_subdirs(root, subdirs + 1);
        q = rmdir_one(root, subdirs[0]);

        return r < 0 ? r : q;
}
