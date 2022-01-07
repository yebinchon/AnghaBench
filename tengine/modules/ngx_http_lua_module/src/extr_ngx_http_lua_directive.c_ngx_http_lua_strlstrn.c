
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;


 int dd (char*,int,int) ;
 scalar_t__ ngx_strncmp (int *,int *,size_t) ;

__attribute__((used)) static u_char *
ngx_http_lua_strlstrn(u_char *s1, u_char *last, u_char *s2, size_t n)
{
    ngx_uint_t c1, c2;

    c2 = (ngx_uint_t) *s2++;
    last -= n;

    do {
        do {
            if (s1 >= last) {
                return ((void*)0);
            }

            c1 = (ngx_uint_t) *s1++;

            dd("testing char '%c' vs '%c'", (int) c1, (int) c2);

        } while (c1 != c2);

        dd("testing against pattern \"%.*s\"", (int) n, s2);

    } while (ngx_strncmp(s1, s2, n) != 0);

    return --s1;
}
