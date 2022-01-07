
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cd; int _errno; int iconv; int iconv_close; int to; int from; } ;
typedef TYPE_1__ rec_iconv_t ;
typedef scalar_t__ iconv_t ;


 int FALSE ;
 int TRUE ;
 int _errno ;
 int make_csconv (char const*,int *) ;
 int win_iconv ;
 int win_iconv_close ;

__attribute__((used)) static int
win_iconv_open(rec_iconv_t *cd, const char *tocode, const char *fromcode)
{
    if (!make_csconv(fromcode, &cd->from) || !make_csconv(tocode, &cd->to))
        return FALSE;
    cd->iconv_close = win_iconv_close;
    cd->iconv = win_iconv;
    cd->_errno = _errno;
    cd->cd = (iconv_t)cd;
    return TRUE;
}
