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
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 void* FUNC1 (int const) ; 
 char* FUNC2 (int) ; 

ssize_t FUNC3(const void *p, size_t l, char **out) {
        char *r, *z;
        const uint8_t *x;

        FUNC0(p || l == 0);
        FUNC0(out);

        /* three input bytes makes four output bytes, padding is added so we must round up */
        z = r = FUNC2(4 * (l + 2) / 3 + 1);
        if (!r)
                return -ENOMEM;

        for (x = p; x < (const uint8_t*) p + (l / 3) * 3; x += 3) {
                /* x[0] == XXXXXXXX; x[1] == YYYYYYYY; x[2] == ZZZZZZZZ */
                *(z++) = FUNC1(x[0] >> 2);                    /* 00XXXXXX */
                *(z++) = FUNC1((x[0] & 3) << 4 | x[1] >> 4);  /* 00XXYYYY */
                *(z++) = FUNC1((x[1] & 15) << 2 | x[2] >> 6); /* 00YYYYZZ */
                *(z++) = FUNC1(x[2] & 63);                    /* 00ZZZZZZ */
        }

        switch (l % 3) {
        case 2:
                *(z++) = FUNC1(x[0] >> 2);                   /* 00XXXXXX */
                *(z++) = FUNC1((x[0] & 3) << 4 | x[1] >> 4); /* 00XXYYYY */
                *(z++) = FUNC1((x[1] & 15) << 2);            /* 00YYYY00 */
                *(z++) = '=';

                break;
        case 1:
                *(z++) = FUNC1(x[0] >> 2);        /* 00XXXXXX */
                *(z++) = FUNC1((x[0] & 3) << 4);  /* 00XX0000 */
                *(z++) = '=';
                *(z++) = '=';

                break;
        }

        *z = 0;
        *out = r;
        return z - r;
}