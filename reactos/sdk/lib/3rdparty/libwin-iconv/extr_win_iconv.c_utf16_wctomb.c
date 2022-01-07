
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort ;
typedef int uchar ;
struct TYPE_3__ {int flags; int mode; int codepage; } ;
typedef TYPE_1__ csconv_t ;


 int E2BIG ;
 int FLAG_USE_BOM ;
 int UNICODE_MODE_BOM_DONE ;
 int memcpy (int*,char*,int) ;
 int seterror (int ) ;

__attribute__((used)) static int
utf16_wctomb(csconv_t *cv, ushort *wbuf, int wbufsize, uchar *buf, int bufsize)
{
    if ((cv->flags & FLAG_USE_BOM) && !(cv->mode & UNICODE_MODE_BOM_DONE))
    {
        int r;

        cv->mode |= UNICODE_MODE_BOM_DONE;
        if (bufsize < 2)
            return seterror(E2BIG);
        if (cv->codepage == 1200)
            memcpy(buf, "\xFF\xFE", 2);
        else if (cv->codepage == 1201)
            memcpy(buf, "\xFE\xFF", 2);

        r = utf16_wctomb(cv, wbuf, wbufsize, buf + 2, bufsize - 2);
        if (r == -1)
            return -1;
        return r + 2;
    }

    if (bufsize < 2)
        return seterror(E2BIG);
    if (cv->codepage == 1200)
    {
        buf[0] = (wbuf[0] & 0x00FF);
        buf[1] = (wbuf[0] & 0xFF00) >> 8;
    }
    else if (cv->codepage == 1201)
    {
        buf[0] = (wbuf[0] & 0xFF00) >> 8;
        buf[1] = (wbuf[0] & 0x00FF);
    }
    if (0xD800 <= wbuf[0] && wbuf[0] <= 0xDBFF)
    {
        if (bufsize < 4)
            return seterror(E2BIG);
        if (cv->codepage == 1200)
        {
            buf[2] = (wbuf[1] & 0x00FF);
            buf[3] = (wbuf[1] & 0xFF00) >> 8;
        }
        else if (cv->codepage == 1201)
        {
            buf[2] = (wbuf[1] & 0xFF00) >> 8;
            buf[3] = (wbuf[1] & 0x00FF);
        }
        return 4;
    }
    return 2;
}
