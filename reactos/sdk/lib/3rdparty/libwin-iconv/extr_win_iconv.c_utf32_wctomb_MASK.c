#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ushort ;
typedef  int uint ;
typedef  int uchar ;
struct TYPE_3__ {int flags; int mode; int codepage; } ;
typedef  TYPE_1__ csconv_t ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int FLAG_USE_BOM ; 
 int UNICODE_MODE_BOM_DONE ; 
 int /*<<< orphan*/  FUNC0 (int*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(csconv_t *cv, ushort *wbuf, int wbufsize, uchar *buf, int bufsize)
{
    uint wc;

    if ((cv->flags & FLAG_USE_BOM) && !(cv->mode & UNICODE_MODE_BOM_DONE))
    {
        int r;

        cv->mode |= UNICODE_MODE_BOM_DONE;
        if (bufsize < 4)
            return FUNC1(E2BIG);
        if (cv->codepage == 12000) /* little endian */
            FUNC0(buf, "\xFF\xFE\x00\x00", 4);
        else if (cv->codepage == 12001) /* big endian */
            FUNC0(buf, "\x00\x00\xFE\xFF", 4);

        r = FUNC3(cv, wbuf, wbufsize, buf + 4, bufsize - 4);
        if (r == -1)
            return -1;
        return r + 4;
    }

    if (bufsize < 4)
        return FUNC1(E2BIG);
    wc = FUNC2(wbuf);
    if (cv->codepage == 12000) /* little endian */
    {
        buf[0] = wc & 0x000000FF;
        buf[1] = (wc & 0x0000FF00) >> 8;
        buf[2] = (wc & 0x00FF0000) >> 16;
        buf[3] = (wc & 0xFF000000) >> 24;
    }
    else if (cv->codepage == 12001) /* big endian */
    {
        buf[0] = (wc & 0xFF000000) >> 24;
        buf[1] = (wc & 0x00FF0000) >> 16;
        buf[2] = (wc & 0x0000FF00) >> 8;
        buf[3] = wc & 0x000000FF;
    }
    return 4;
}