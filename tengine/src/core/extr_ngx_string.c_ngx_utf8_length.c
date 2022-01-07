
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ngx_utf8_decode (int**,int) ;

size_t
ngx_utf8_length(u_char *p, size_t n)
{
    u_char c, *last;
    size_t len;

    last = p + n;

    for (len = 0; p < last; len++) {

        c = *p;

        if (c < 0x80) {
            p++;
            continue;
        }

        if (ngx_utf8_decode(&p, last - p) > 0x10ffff) {

            return n;
        }
    }

    return len;
}
