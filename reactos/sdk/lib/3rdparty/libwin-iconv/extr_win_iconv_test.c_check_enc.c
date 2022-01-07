
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codepage; } ;
struct TYPE_4__ {TYPE_1__ from; } ;
typedef TYPE_2__ rec_iconv_t ;
typedef scalar_t__ iconv_t ;


 int FALSE ;
 int TRUE ;
 int exit (int) ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char*,char const*) ;
 int printf (char*,char const*,int,...) ;

int
check_enc(const char *encname, int codepage)
{
    iconv_t cd;
    int cp;
    cd = iconv_open("utf-8", encname);
    if (cd == (iconv_t)(-1))
    {
        printf("%s(%d) IS NOT SUPPORTED: SKIP THE TEST\n", encname, codepage);
        return FALSE;
    }

    cp = ((rec_iconv_t *)cd)->from.codepage;
    if (cp != codepage)
    {
        printf("%s(%d) ALIAS IS MAPPED TO DIFFERENT CODEPAGE (%d)\n", encname, codepage, cp);
        exit(1);
    }

    iconv_close(cd);
    return TRUE;
}
