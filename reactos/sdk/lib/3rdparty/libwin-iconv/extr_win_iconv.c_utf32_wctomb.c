
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort ;
typedef int uint ;
typedef int uchar ;
struct TYPE_3__ {int flags; int mode; int codepage; } ;
typedef TYPE_1__ csconv_t ;


 int E2BIG ;
 int FLAG_USE_BOM ;
 int UNICODE_MODE_BOM_DONE ;
 int memcpy (int*,char*,int) ;
 int seterror (int ) ;
 int utf16_to_ucs4 (int *) ;

__attribute__((used)) static int
utf32_wctomb(csconv_t *cv, ushort *wbuf, int wbufsize, uchar *buf, int bufsize)
{
    uint wc;

    if ((cv->flags & FLAG_USE_BOM) && !(cv->mode & UNICODE_MODE_BOM_DONE))
    {
        int r;

        cv->mode |= UNICODE_MODE_BOM_DONE;
        if (bufsize < 4)
            return seterror(E2BIG);
        if (cv->codepage == 12000)
            memcpy(buf, "\xFF\xFE\x00\x00", 4);
        else if (cv->codepage == 12001)
            memcpy(buf, "\x00\x00\xFE\xFF", 4);

        r = utf32_wctomb(cv, wbuf, wbufsize, buf + 4, bufsize - 4);
        if (r == -1)
            return -1;
        return r + 4;
    }

    if (bufsize < 4)
        return seterror(E2BIG);
    wc = utf16_to_ucs4(wbuf);
    if (cv->codepage == 12000)
    {
        buf[0] = wc & 0x000000FF;
        buf[1] = (wc & 0x0000FF00) >> 8;
        buf[2] = (wc & 0x00FF0000) >> 16;
        buf[3] = (wc & 0xFF000000) >> 24;
    }
    else if (cv->codepage == 12001)
    {
        buf[0] = (wc & 0xFF000000) >> 24;
        buf[1] = (wc & 0x00FF0000) >> 16;
        buf[2] = (wc & 0x0000FF00) >> 8;
        buf[3] = wc & 0x000000FF;
    }
    return 4;
}
