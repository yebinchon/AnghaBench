
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ushort ;
typedef int uchar ;
struct TYPE_4__ {int (* mblen ) (TYPE_1__*,int const*,int) ;int codepage; } ;
typedef TYPE_1__ csconv_t ;


 int EILSEQ ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int mbtowc_flags (int ) ;
 int seterror (int ) ;
 int stub1 (TYPE_1__*,int const*,int) ;

__attribute__((used)) static int
kernel_mbtowc(csconv_t *cv, const uchar *buf, int bufsize, ushort *wbuf, int *wbufsize)
{
    int len;

    len = cv->mblen(cv, buf, bufsize);
    if (len == -1)
        return -1;
    *wbufsize = MultiByteToWideChar(cv->codepage, mbtowc_flags (cv->codepage),
            (const char *)buf, len, (wchar_t *)wbuf, *wbufsize);
    if (*wbufsize == 0)
        return seterror(EILSEQ);
    return len;
}
