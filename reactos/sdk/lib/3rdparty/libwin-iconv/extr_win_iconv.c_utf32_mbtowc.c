
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort ;
typedef int uint ;
typedef int uchar ;
struct TYPE_3__ {int codepage; int mode; int flags; } ;
typedef TYPE_1__ csconv_t ;


 int EILSEQ ;
 int EINVAL ;
 int FLAG_USE_BOM ;
 int UNICODE_MODE_BOM_DONE ;
 int UNICODE_MODE_SWAPPED ;
 int seterror (int ) ;
 int ucs4_to_utf16 (int,int *,int*) ;

__attribute__((used)) static int
utf32_mbtowc(csconv_t *cv, const uchar *buf, int bufsize, ushort *wbuf, int *wbufsize)
{
    int codepage = cv->codepage;
    uint wc;


    if (cv->mode & UNICODE_MODE_SWAPPED)
        codepage ^= 1;

    if (bufsize < 4)
        return seterror(EINVAL);
    if (codepage == 12000)
        wc = (buf[3] << 24) | (buf[2] << 16) | (buf[1] << 8) | buf[0];
    else if (codepage == 12001)
        wc = (buf[0] << 24) | (buf[1] << 16) | (buf[2] << 8) | buf[3];

    if ((cv->flags & FLAG_USE_BOM) && !(cv->mode & UNICODE_MODE_BOM_DONE))
    {
        cv->mode |= UNICODE_MODE_BOM_DONE;
        if (wc == 0xFFFE0000)
        {
            cv->mode |= UNICODE_MODE_SWAPPED;
            *wbufsize = 0;
            return 4;
        }
        else if (wc == 0x0000FEFF)
        {
            *wbufsize = 0;
            return 4;
        }
    }

    if ((0xD800 <= wc && wc <= 0xDFFF) || 0x10FFFF < wc)
        return seterror(EILSEQ);
    ucs4_to_utf16(wc, wbuf, wbufsize);
    return 4;
}
