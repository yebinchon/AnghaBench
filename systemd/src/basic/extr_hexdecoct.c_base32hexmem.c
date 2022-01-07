
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int assert (int ) ;
 void* base32hexchar (int const) ;
 char* malloc (size_t) ;

char *base32hexmem(const void *p, size_t l, bool padding) {
        char *r, *z;
        const uint8_t *x;
        size_t len;

        assert(p || l == 0);

        if (padding)

                len = 8 * (l + 4) / 5;
        else {

                len = 8 * l / 5;

                switch (l % 5) {
                case 4:
                        len += 7;
                        break;
                case 3:
                        len += 5;
                        break;
                case 2:
                        len += 4;
                        break;
                case 1:
                        len += 2;
                        break;
                }
        }

        z = r = malloc(len + 1);
        if (!r)
                return ((void*)0);

        for (x = p; x < (const uint8_t*) p + (l / 5) * 5; x += 5) {


                *(z++) = base32hexchar(x[0] >> 3);
                *(z++) = base32hexchar((x[0] & 7) << 2 | x[1] >> 6);
                *(z++) = base32hexchar((x[1] & 63) >> 1);
                *(z++) = base32hexchar((x[1] & 1) << 4 | x[2] >> 4);
                *(z++) = base32hexchar((x[2] & 15) << 1 | x[3] >> 7);
                *(z++) = base32hexchar((x[3] & 127) >> 2);
                *(z++) = base32hexchar((x[3] & 3) << 3 | x[4] >> 5);
                *(z++) = base32hexchar((x[4] & 31));
        }

        switch (l % 5) {
        case 4:
                *(z++) = base32hexchar(x[0] >> 3);
                *(z++) = base32hexchar((x[0] & 7) << 2 | x[1] >> 6);
                *(z++) = base32hexchar((x[1] & 63) >> 1);
                *(z++) = base32hexchar((x[1] & 1) << 4 | x[2] >> 4);
                *(z++) = base32hexchar((x[2] & 15) << 1 | x[3] >> 7);
                *(z++) = base32hexchar((x[3] & 127) >> 2);
                *(z++) = base32hexchar((x[3] & 3) << 3);
                if (padding)
                        *(z++) = '=';

                break;

        case 3:
                *(z++) = base32hexchar(x[0] >> 3);
                *(z++) = base32hexchar((x[0] & 7) << 2 | x[1] >> 6);
                *(z++) = base32hexchar((x[1] & 63) >> 1);
                *(z++) = base32hexchar((x[1] & 1) << 4 | x[2] >> 4);
                *(z++) = base32hexchar((x[2] & 15) << 1);
                if (padding) {
                        *(z++) = '=';
                        *(z++) = '=';
                        *(z++) = '=';
                }

                break;

        case 2:
                *(z++) = base32hexchar(x[0] >> 3);
                *(z++) = base32hexchar((x[0] & 7) << 2 | x[1] >> 6);
                *(z++) = base32hexchar((x[1] & 63) >> 1);
                *(z++) = base32hexchar((x[1] & 1) << 4);
                if (padding) {
                        *(z++) = '=';
                        *(z++) = '=';
                        *(z++) = '=';
                        *(z++) = '=';
                }

                break;

        case 1:
                *(z++) = base32hexchar(x[0] >> 3);
                *(z++) = base32hexchar((x[0] & 7) << 2);
                if (padding) {
                        *(z++) = '=';
                        *(z++) = '=';
                        *(z++) = '=';
                        *(z++) = '=';
                        *(z++) = '=';
                        *(z++) = '=';
                }

                break;
        }

        *z = 0;
        return r;
}
