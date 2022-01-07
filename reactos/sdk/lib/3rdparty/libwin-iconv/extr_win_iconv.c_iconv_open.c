
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rec_iconv_t ;
typedef int iconv_t ;


 scalar_t__ calloc (int,int) ;
 scalar_t__ errno ;
 int free (int *) ;
 scalar_t__ libiconv_iconv_open (int *,char const*,char const*) ;
 scalar_t__ win_iconv_open (int *,char const*,char const*) ;

iconv_t
iconv_open(const char *tocode, const char *fromcode)
{
    rec_iconv_t *cd;

    cd = (rec_iconv_t *)calloc(1, sizeof(rec_iconv_t));
    if (cd == ((void*)0))
        return (iconv_t)(-1);
    errno = 0;
    if (win_iconv_open(cd, tocode, fromcode))
        return (iconv_t)cd;

    free(cd);

    return (iconv_t)(-1);
}
