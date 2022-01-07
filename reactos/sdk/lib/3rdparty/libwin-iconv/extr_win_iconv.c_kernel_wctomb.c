
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ushort ;
typedef int uchar ;
struct TYPE_4__ {int flags; int (* mblen ) (TYPE_1__*,int *,int) ;int codepage; } ;
typedef TYPE_1__ csconv_t ;
typedef scalar_t__ BOOL ;


 int E2BIG ;
 int EILSEQ ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int FLAG_TRANSLIT ;
 scalar_t__ GetLastError () ;
 int WC_NO_BEST_FIT_CHARS ;
 int WideCharToMultiByte (int ,int,int const*,int,char*,int,int *,scalar_t__*) ;
 int must_use_null_useddefaultchar (int ) ;
 int seterror (int ) ;
 int stub1 (TYPE_1__*,int *,int) ;

__attribute__((used)) static int
kernel_wctomb(csconv_t *cv, ushort *wbuf, int wbufsize, uchar *buf, int bufsize)
{
    BOOL usedDefaultChar = 0;
    BOOL *p = ((void*)0);
    int flags = 0;
    int len;

    if (bufsize == 0)
        return seterror(E2BIG);
    if (!must_use_null_useddefaultchar(cv->codepage))
    {
        p = &usedDefaultChar;




    }
    len = WideCharToMultiByte(cv->codepage, flags,
            (const wchar_t *)wbuf, wbufsize, (char *)buf, bufsize, ((void*)0), p);
    if (len == 0)
    {
        if (GetLastError() == ERROR_INSUFFICIENT_BUFFER)
            return seterror(E2BIG);
        return seterror(EILSEQ);
    }
    else if (usedDefaultChar && !(cv->flags & FLAG_TRANSLIT))
        return seterror(EILSEQ);
    else if (cv->mblen(cv, buf, len) != len)
        return seterror(EILSEQ);
    return len;
}
