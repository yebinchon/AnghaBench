
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ENOMEM ;
 int assert (char const*) ;
 int errno ;
 int free (char*) ;
 scalar_t__ path_startswith (char const*,char*) ;
 int rmdir (char*) ;
 size_t strlen (char const*) ;
 char* strndup (char const*,size_t) ;

int rmdir_parents(const char *path, const char *stop) {
        size_t l;
        int r = 0;

        assert(path);
        assert(stop);

        l = strlen(path);


        while (l > 0 && path[l-1] == '/')
                l--;

        while (l > 0) {
                char *t;


                while (l > 0 && path[l-1] != '/')
                        l--;


                while (l > 0 && path[l-1] == '/')
                        l--;

                if (l <= 0)
                        break;

                t = strndup(path, l);
                if (!t)
                        return -ENOMEM;

                if (path_startswith(stop, t)) {
                        free(t);
                        return 0;
                }

                r = rmdir(t);
                free(t);

                if (r < 0)
                        if (errno != ENOENT)
                                return -errno;
        }

        return 0;
}
