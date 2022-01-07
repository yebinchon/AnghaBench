
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ushort ;
typedef int uchar ;
struct TYPE_4__ {int (* mblen ) (TYPE_1__*,int *,int) ;int codepage; int mode; } ;
typedef TYPE_1__ csconv_t ;
typedef scalar_t__ HRESULT ;


 scalar_t__ ConvertINetUnicodeToMultiByte (int *,int ,int const*,int*,char*,int*) ;
 int E2BIG ;
 int EILSEQ ;
 int MB_CHAR_MAX ;
 scalar_t__ S_OK ;
 int memcpy (int *,char*,int) ;
 int seterror (int ) ;
 int stub1 (TYPE_1__*,int *,int) ;

__attribute__((used)) static int
mlang_wctomb(csconv_t *cv, ushort *wbuf, int wbufsize, uchar *buf, int bufsize)
{
    char tmpbuf[MB_CHAR_MAX];
    int tmpsize = MB_CHAR_MAX;
    int insize = wbufsize;
    HRESULT hr;

    hr = ConvertINetUnicodeToMultiByte(&cv->mode, cv->codepage,
            (const wchar_t *)wbuf, &wbufsize, tmpbuf, &tmpsize);
    if (hr != S_OK || insize != wbufsize)
        return seterror(EILSEQ);
    else if (bufsize < tmpsize)
        return seterror(E2BIG);
    else if (cv->mblen(cv, (uchar *)tmpbuf, tmpsize) != tmpsize)
        return seterror(EILSEQ);
    memcpy(buf, tmpbuf, tmpsize);
    return tmpsize;
}
