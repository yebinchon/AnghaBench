
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ssize_t ;


 int ENOMEM ;
 int assert (char**) ;
 void* base64char (int const) ;
 char* malloc (int) ;

ssize_t base64mem(const void *p, size_t l, char **out) {
        char *r, *z;
        const uint8_t *x;

        assert(p || l == 0);
        assert(out);


        z = r = malloc(4 * (l + 2) / 3 + 1);
        if (!r)
                return -ENOMEM;

        for (x = p; x < (const uint8_t*) p + (l / 3) * 3; x += 3) {

                *(z++) = base64char(x[0] >> 2);
                *(z++) = base64char((x[0] & 3) << 4 | x[1] >> 4);
                *(z++) = base64char((x[1] & 15) << 2 | x[2] >> 6);
                *(z++) = base64char(x[2] & 63);
        }

        switch (l % 3) {
        case 2:
                *(z++) = base64char(x[0] >> 2);
                *(z++) = base64char((x[0] & 3) << 4 | x[1] >> 4);
                *(z++) = base64char((x[1] & 15) << 2);
                *(z++) = '=';

                break;
        case 1:
                *(z++) = base64char(x[0] >> 2);
                *(z++) = base64char((x[0] & 3) << 4);
                *(z++) = '=';
                *(z++) = '=';

                break;
        }

        *z = 0;
        *out = r;
        return z - r;
}
