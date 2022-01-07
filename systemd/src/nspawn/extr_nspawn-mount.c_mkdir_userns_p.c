
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int mode_t ;


 int ENOTDIR ;
 int assert (char const*) ;
 int memcpy (char*,char const*,int) ;
 int mkdir_userns (char const*,int ,int ) ;
 scalar_t__ path_startswith (char const*,char const*) ;
 int strcspn (char const*,char*) ;
 int strlen (char const*) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int mkdir_userns_p(const char *prefix, const char *path, mode_t mode, uid_t uid_shift) {
        const char *p, *e;
        int r;

        assert(path);

        if (prefix && !path_startswith(path, prefix))
                return -ENOTDIR;


        p = path + strspn(path, "/");
        for (;;) {
                char t[strlen(path) + 1];

                e = p + strcspn(p, "/");
                p = e + strspn(e, "/");


                if (*p == 0)
                        break;

                memcpy(t, path, e - path);
                t[e-path] = 0;

                if (prefix && path_startswith(prefix, t))
                        continue;

                r = mkdir_userns(t, mode, uid_shift);
                if (r < 0)
                        return r;
        }

        return mkdir_userns(path, mode, uid_shift);
}
