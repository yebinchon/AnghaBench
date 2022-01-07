
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int strlen (char const*) ;

const char *last_path_component(const char *path) {
        unsigned l, k;

        if (!path)
                return ((void*)0);

        l = k = strlen(path);
        if (l == 0)
                return path;

        while (k > 0 && path[k-1] == '/')
                k--;

        if (k == 0)
                return path + l - 1;

        while (k > 0 && path[k-1] != '/')
                k--;

        return path + k;
}
