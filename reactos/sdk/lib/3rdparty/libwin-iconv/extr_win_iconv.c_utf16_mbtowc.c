
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort ;
typedef int uchar ;
struct TYPE_3__ {int codepage; int mode; int flags; } ;
typedef TYPE_1__ csconv_t ;


 int EILSEQ ;
 int EINVAL ;
 int FLAG_USE_BOM ;
 int UNICODE_MODE_BOM_DONE ;
 int UNICODE_MODE_SWAPPED ;
 int seterror (int ) ;

__attribute__((used)) static int
utf16_mbtowc(csconv_t *cv, const uchar *buf, int bufsize, ushort *wbuf, int *wbufsize)
{
    int codepage = cv->codepage;


    if (cv->mode & UNICODE_MODE_SWAPPED)
        codepage ^= 1;

    if (bufsize < 2)
        return seterror(EINVAL);
    if (codepage == 1200)
        wbuf[0] = (buf[1] << 8) | buf[0];
    else if (codepage == 1201)
        wbuf[0] = (buf[0] << 8) | buf[1];

    if ((cv->flags & FLAG_USE_BOM) && !(cv->mode & UNICODE_MODE_BOM_DONE))
    {
        cv->mode |= UNICODE_MODE_BOM_DONE;
        if (wbuf[0] == 0xFFFE)
        {
            cv->mode |= UNICODE_MODE_SWAPPED;
            *wbufsize = 0;
            return 2;
        }
        else if (wbuf[0] == 0xFEFF)
        {
            *wbufsize = 0;
            return 2;
        }
    }

    if (0xDC00 <= wbuf[0] && wbuf[0] <= 0xDFFF)
        return seterror(EILSEQ);
    if (0xD800 <= wbuf[0] && wbuf[0] <= 0xDBFF)
    {
        if (bufsize < 4)
            return seterror(EINVAL);
        if (codepage == 1200)
            wbuf[1] = (buf[3] << 8) | buf[2];
        else if (codepage == 1201)
            wbuf[1] = (buf[2] << 8) | buf[3];
        if (!(0xDC00 <= wbuf[1] && wbuf[1] <= 0xDFFF))
            return seterror(EILSEQ);
        *wbufsize = 2;
        return 4;
    }
    *wbufsize = 1;
    return 2;
}
