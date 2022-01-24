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
typedef  scalar_t__ WCHAR ;

/* Variables and functions */
 int MAP_COMPOSITE ; 
 int MAP_EXPAND_LIGATURES ; 
 int MAP_FOLDCZONE ; 
 int MAP_FOLDDIGITS ; 
 int MAP_PRECOMPOSED ; 
 scalar_t__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__ const) ; 
 int FUNC2 (scalar_t__ const*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

int FUNC5( int flags, const WCHAR *src, int srclen, WCHAR *dst, int dstlen )
{
    WCHAR *dstbase = dst;
    const WCHAR *expand;
    int i;

    if (srclen == -1)
        srclen = FUNC2(src) + 1; /* Include terminating NUL in count */

    if (!dstlen)
    {
        /* Calculate the required size for dst */
        dstlen = srclen;

        if (flags & MAP_EXPAND_LIGATURES)
        {
            while (srclen--)
            {
                dstlen += FUNC1(*src);
                src++;
            }
        }
        else if (flags & MAP_COMPOSITE)
        {
            /* FIXME */
        }
        else if (flags & MAP_PRECOMPOSED)
        {
            /* FIXME */
        }
        return dstlen;
    }

    if (srclen > dstlen)
        return 0;

    dstlen -= srclen;

    /* Actually perform the mapping(s) specified */
    for (i = 0; i < srclen; i++)
    {
        WCHAR ch = *src;

        if (flags & MAP_EXPAND_LIGATURES)
        {
            expand = FUNC0(ch);
            if (expand[0])
            {
                if (!dstlen--)
                    return 0;
                dst[0] = expand[0];
                if (expand[2])
                {
                    if (!dstlen--)
                        return 0;
                    *++dst = expand[1];
                    ch = expand[2];
                }
                else
                    ch = expand[1];
                dst++;
            }
        }
        else if (flags & MAP_COMPOSITE)
        {
            /* FIXME */
        }
        else if (flags & MAP_PRECOMPOSED)
        {
            /* FIXME */
        }
        if (flags & MAP_FOLDDIGITS)
            ch = FUNC3(ch);
        if (flags & MAP_FOLDCZONE)
            ch = FUNC4(ch);

        *dst++ = ch;
        src++;
    }
    return dst - dstbase;
}