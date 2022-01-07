
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;

char *ascii_is_valid(const char *str) {
        const char *p;




        assert(str);

        for (p = str; *p; p++)
                if ((unsigned char) *p >= 128)
                        return ((void*)0);

        return (char*) str;
}
