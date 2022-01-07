
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strcspn (char const*,char*) ;
 int strspn (char const*,char*) ;

char* path_startswith(const char *path, const char *prefix) {
        assert(path);
        assert(prefix);
        if ((path[0] == '/') != (prefix[0] == '/'))
                return ((void*)0);

        for (;;) {
                size_t a, b;

                path += strspn(path, "/");
                prefix += strspn(prefix, "/");

                if (*prefix == 0)
                        return (char*) path;

                if (*path == 0)
                        return ((void*)0);

                a = strcspn(path, "/");
                b = strcspn(prefix, "/");

                if (a != b)
                        return ((void*)0);

                if (memcmp(path, prefix, a) != 0)
                        return ((void*)0);

                path += a;
                prefix += b;
        }
}
