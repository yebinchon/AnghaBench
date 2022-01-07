
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t (* iconv ) (int ,char const**,size_t*,char**,size_t*) ;int * (* _errno ) () ;int cd; } ;
typedef TYPE_1__ rec_iconv_t ;
typedef scalar_t__ iconv_t ;


 int errno ;
 size_t stub1 (int ,char const**,size_t*,char**,size_t*) ;
 int * stub2 () ;

size_t
iconv(iconv_t _cd, const char **inbuf, size_t *inbytesleft, char **outbuf, size_t *outbytesleft)
{
    rec_iconv_t *cd = (rec_iconv_t *)_cd;
    size_t r = cd->iconv(cd->cd, inbuf, inbytesleft, outbuf, outbytesleft);
    errno = *(cd->_errno());
    return r;
}
