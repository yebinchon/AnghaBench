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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int MB_COMPOSITE ; 
 int MB_ERR_INVALID_CHARS ; 
 unsigned int FUNC0 (unsigned char,char const**,char const*) ; 
 int FUNC1 (int,char const*,int) ; 
 int FUNC2 (int,char const*,int,int /*<<< orphan*/ *,int) ; 

int FUNC3( int flags, const char *src, int srclen, WCHAR *dst, int dstlen )
{
    unsigned int res;
    const char *srcend = src + srclen;
    WCHAR *dstend = dst + dstlen;

    if (flags & MB_COMPOSITE) return FUNC2( flags, src, srclen, dst, dstlen );

    if (!dstlen) return FUNC1( flags, src, srclen );

    while ((dst < dstend) && (src < srcend))
    {
        unsigned char ch = *src++;
        if (ch < 0x80)  /* special fast case for 7-bit ASCII */
        {
            *dst++ = ch;
            continue;
        }
        if ((res = FUNC0( ch, &src, srcend )) <= 0xffff)
        {
            *dst++ = res;
        }
        else if (res <= 0x10ffff)  /* we need surrogates */
        {
            if (dst == dstend - 1) return -1;  /* overflow */
            res -= 0x10000;
            *dst++ = 0xd800 | (res >> 10);
            *dst++ = 0xdc00 | (res & 0x3ff);
        }
        else if (flags & MB_ERR_INVALID_CHARS) return -2;  /* bad char */
        /* otherwise ignore it */
    }
    if (src < srcend) return -1;  /* overflow */
    return dstlen - (dstend - dst);
}