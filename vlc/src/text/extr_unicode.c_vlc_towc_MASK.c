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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

size_t FUNC4 (const char *str, uint32_t *restrict pwc)
{
    uint8_t *ptr = (uint8_t *)str, c;
    uint32_t cp;

    FUNC0 (str != NULL);

    c = *ptr;
    if (FUNC2(c > 0xF4))
        return -1;

    int charlen = FUNC1((unsigned char)(c ^ 0xFF));
    switch (charlen)
    {
        case 0: // 7-bit ASCII character -> short cut
            *pwc = c;
            return c != '\0';

        case 1: // continuation byte -> error
            return -1;

        case 2:
            if (FUNC2(c < 0xC2)) // ASCII overlong
                return -1;
            cp = (c & 0x1F) << 6;
            break;

        case 3:
            cp = (c & 0x0F) << 12;
            break;

        case 4:
            cp = (c & 0x07) << 18;
            break;

        default:
            FUNC3 ();
    }

    /* Unrolled continuation bytes decoding */
    switch (charlen)
    {
        case 4:
            c = *++ptr;
            if (FUNC2((c & 0xC0) != 0x80)) // not a continuation byte
                return -1;
            cp |= (c & 0x3F) << 12;

            if (FUNC2(cp >= 0x110000)) // beyond Unicode range
                return -1;
            /* fall through */
        case 3:
            c = *++ptr;
            if (FUNC2((c & 0xC0) != 0x80)) // not a continuation byte
                return -1;
            cp |= (c & 0x3F) << 6;

            if (FUNC2(cp >= 0xD800 && cp < 0xE000)) // UTF-16 surrogate
                return -1;
            if (FUNC2(cp < (1u << (5 * charlen - 4)))) // non-ASCII overlong
                return -1;
            /* fall through */
        case 2:
            c = *++ptr;
            if (FUNC2((c & 0xC0) != 0x80)) // not a continuation byte
                return -1;
            cp |= (c & 0x3F);
            break;
    }

    *pwc = cp;
    return charlen;
}