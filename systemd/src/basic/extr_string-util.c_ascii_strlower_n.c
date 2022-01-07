
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ascii_tolower (char) ;

char *ascii_strlower_n(char *t, size_t n) {
        size_t i;

        if (n <= 0)
                return t;

        for (i = 0; i < n; i++)
                t[i] = ascii_tolower(t[i]);

        return t;
}
