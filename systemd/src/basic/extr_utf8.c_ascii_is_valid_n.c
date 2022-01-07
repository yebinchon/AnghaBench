
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;

char *ascii_is_valid_n(const char *str, size_t len) {
        size_t i;




        assert(str);

        for (i = 0; i < len; i++)
                if ((unsigned char) str[i] >= 128 || str[i] == 0)
                        return ((void*)0);

        return (char*) str;
}
