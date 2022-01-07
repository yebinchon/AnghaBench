
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IN_SET (char,int ,char) ;
 int assert (char*) ;
 scalar_t__ isempty (char*) ;
 int path_is_absolute (char*) ;

char *path_simplify(char *path, bool kill_dots) {
        char *f, *t;
        bool slash = 0, ignore_slash = 0, absolute;

        assert(path);
        if (isempty(path))
                return path;

        absolute = path_is_absolute(path);

        f = path;
        if (kill_dots && *f == '.' && IN_SET(f[1], 0, '/')) {
                ignore_slash = 1;
                f++;
        }

        for (t = path; *f; f++) {

                if (*f == '/') {
                        slash = 1;
                        continue;
                }

                if (slash) {
                        if (kill_dots && *f == '.' && IN_SET(f[1], 0, '/'))
                                continue;

                        slash = 0;
                        if (ignore_slash)
                                ignore_slash = 0;
                        else
                                *(t++) = '/';
                }

                *(t++) = *f;
        }



        if (t == path) {
                if (absolute)
                        *(t++) = '/';
                else
                        *(t++) = '.';
        }

        *t = 0;
        return path;
}
