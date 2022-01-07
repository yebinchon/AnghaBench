
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ushort ;
typedef int uchar ;
struct TYPE_4__ {int (* mblen ) (TYPE_1__*,int const*,int) ;int codepage; int mode; } ;
typedef TYPE_1__ csconv_t ;
typedef scalar_t__ HRESULT ;


 scalar_t__ ConvertINetMultiByteToUnicode (int *,int ,char const*,int*,int *,int*) ;
 int EILSEQ ;
 scalar_t__ S_OK ;
 int seterror (int ) ;
 int stub1 (TYPE_1__*,int const*,int) ;

__attribute__((used)) static int
mlang_mbtowc(csconv_t *cv, const uchar *buf, int bufsize, ushort *wbuf, int *wbufsize)
{
    int len;
    int insize;
    HRESULT hr;

    len = cv->mblen(cv, buf, bufsize);
    if (len == -1)
        return -1;
    insize = len;
    hr = ConvertINetMultiByteToUnicode(&cv->mode, cv->codepage,
            (const char *)buf, &insize, (wchar_t *)wbuf, wbufsize);
    if (hr != S_OK || insize != len)
        return seterror(EILSEQ);
    return len;
}
