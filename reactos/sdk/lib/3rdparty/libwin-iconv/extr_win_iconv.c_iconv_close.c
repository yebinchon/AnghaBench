
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* iconv_close ) (int ) ;int* (* _errno ) () ;int * hlibiconv; int cd; } ;
typedef TYPE_1__ rec_iconv_t ;
typedef scalar_t__ iconv_t ;


 int FreeLibrary (int *) ;
 int errno ;
 int free (TYPE_1__*) ;
 int stub1 (int ) ;
 int* stub2 () ;

int
iconv_close(iconv_t _cd)
{
    rec_iconv_t *cd = (rec_iconv_t *)_cd;
    int r = cd->iconv_close(cd->cd);
    int e = *(cd->_errno());




    free(cd);
    errno = e;
    return r;
}
