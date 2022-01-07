
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static bool next_header(const char **s) {
        const char *e;

        e = strchr(*s, '\n');


        if (!e)
                return 0;


        if (e == *s)
                return 0;

        *s = e + 1;
        return 1;
}
