#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int const) ; 
 char* FUNC2 (size_t) ; 

char *FUNC3(const void *p, size_t l, bool padding) {
        char *r, *z;
        const uint8_t *x;
        size_t len;

        FUNC0(p || l == 0);

        if (padding)
                /* five input bytes makes eight output bytes, padding is added so we must round up */
                len = 8 * (l + 4) / 5;
        else {
                /* same, but round down as there is no padding */
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

        z = r = FUNC2(len + 1);
        if (!r)
                return NULL;

        for (x = p; x < (const uint8_t*) p + (l / 5) * 5; x += 5) {
                /* x[0] == XXXXXXXX; x[1] == YYYYYYYY; x[2] == ZZZZZZZZ
                 * x[3] == QQQQQQQQ; x[4] == WWWWWWWW */
                *(z++) = FUNC1(x[0] >> 3);                    /* 000XXXXX */
                *(z++) = FUNC1((x[0] & 7) << 2 | x[1] >> 6);  /* 000XXXYY */
                *(z++) = FUNC1((x[1] & 63) >> 1);             /* 000YYYYY */
                *(z++) = FUNC1((x[1] & 1) << 4 | x[2] >> 4);  /* 000YZZZZ */
                *(z++) = FUNC1((x[2] & 15) << 1 | x[3] >> 7); /* 000ZZZZQ */
                *(z++) = FUNC1((x[3] & 127) >> 2);            /* 000QQQQQ */
                *(z++) = FUNC1((x[3] & 3) << 3 | x[4] >> 5);  /* 000QQWWW */
                *(z++) = FUNC1((x[4] & 31));                  /* 000WWWWW */
        }

        switch (l % 5) {
        case 4:
                *(z++) = FUNC1(x[0] >> 3);                    /* 000XXXXX */
                *(z++) = FUNC1((x[0] & 7) << 2 | x[1] >> 6);  /* 000XXXYY */
                *(z++) = FUNC1((x[1] & 63) >> 1);             /* 000YYYYY */
                *(z++) = FUNC1((x[1] & 1) << 4 | x[2] >> 4);   /* 000YZZZZ */
                *(z++) = FUNC1((x[2] & 15) << 1 | x[3] >> 7); /* 000ZZZZQ */
                *(z++) = FUNC1((x[3] & 127) >> 2);            /* 000QQQQQ */
                *(z++) = FUNC1((x[3] & 3) << 3);              /* 000QQ000 */
                if (padding)
                        *(z++) = '=';

                break;

        case 3:
                *(z++) = FUNC1(x[0] >> 3);                   /* 000XXXXX */
                *(z++) = FUNC1((x[0] & 7) << 2 | x[1] >> 6); /* 000XXXYY */
                *(z++) = FUNC1((x[1] & 63) >> 1);            /* 000YYYYY */
                *(z++) = FUNC1((x[1] & 1) << 4 | x[2] >> 4); /* 000YZZZZ */
                *(z++) = FUNC1((x[2] & 15) << 1);            /* 000ZZZZ0 */
                if (padding) {
                        *(z++) = '=';
                        *(z++) = '=';
                        *(z++) = '=';
                }

                break;

        case 2:
                *(z++) = FUNC1(x[0] >> 3);                   /* 000XXXXX */
                *(z++) = FUNC1((x[0] & 7) << 2 | x[1] >> 6); /* 000XXXYY */
                *(z++) = FUNC1((x[1] & 63) >> 1);            /* 000YYYYY */
                *(z++) = FUNC1((x[1] & 1) << 4);             /* 000Y0000 */
                if (padding) {
                        *(z++) = '=';
                        *(z++) = '=';
                        *(z++) = '=';
                        *(z++) = '=';
                }

                break;

        case 1:
                *(z++) = FUNC1(x[0] >> 3);       /* 000XXXXX */
                *(z++) = FUNC1((x[0] & 7) << 2); /* 000XXX00 */
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