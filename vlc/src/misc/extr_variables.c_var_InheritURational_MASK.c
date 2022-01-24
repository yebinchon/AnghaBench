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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (char*,char**,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

int (FUNC4)(vlc_object_t *object,
                           unsigned *num, unsigned *den,
                           const char *var)
{
    char *str = FUNC2(object, var);
    if (str == NULL)
        goto error;

    char *sep;
    unsigned n = FUNC1(str, &sep, 10);
    unsigned d;

    switch (*sep) {
        case '\0':
            /* Decimal integer */
            d = 1;
            break;

        case ':':
        case '/':
            /* Decimal fraction */
            d = FUNC1(sep + 1, &sep, 10);
            if (*sep != '\0')
                goto error;
            break;

        case '.': {
            /* Decimal number */
            unsigned char c;

            d = 1;
            while ((c = *(++sep)) != '\0') {
                c -= '0';

                if (c >= 10)
                    goto error;

                n = n * 10 + c;
                d *= 10;
            }
            break;
        }

        default:
            goto error;
    }

    FUNC0(str);

    if (n == 0) {
        *num = 0;
        *den = d ? 1 : 0;
    } else if (d == 0) {
        *num = 1;
        *den = 0;
    } else
        FUNC3(num, den, n, d, 0);

    return VLC_SUCCESS;

error:
    FUNC0(str);
    *num = 0;
    *den = 0;
    return VLC_EGENERIC;
}