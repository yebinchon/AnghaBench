
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;


 scalar_t__ ngx_strncmp (scalar_t__*,scalar_t__*,size_t) ;

u_char *
ngx_strstrn(u_char *s1, char *s2, size_t n)
{
    u_char c1, c2;

    c2 = *(u_char *) s2++;

    do {
        do {
            c1 = *s1++;

            if (c1 == 0) {
                return ((void*)0);
            }

        } while (c1 != c2);

    } while (ngx_strncmp(s1, (u_char *) s2, n) != 0);

    return --s1;
}
