
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int curlen; unsigned char* buf; int X; int chksum; } ;
typedef TYPE_1__ md2_state ;


 int CRYPT_INVALID_ARG ;
 int CRYPT_OK ;
 int md2_compress (TYPE_1__*) ;
 int md2_update_chksum (TYPE_1__*) ;
 int memcpy (unsigned char*,int ,int) ;

int md2_done(md2_state * md2, unsigned char *hash)
{
    unsigned long i, k;

    if (md2->curlen >= sizeof(md2->buf)) {
       return CRYPT_INVALID_ARG;
    }


    k = 16 - md2->curlen;
    for (i = md2->curlen; i < 16; i++) {
        md2->buf[i] = (unsigned char)k;
    }


    md2_compress(md2);
    md2_update_chksum(md2);


    memcpy(md2->buf, md2->chksum, 16);
    md2_compress(md2);


    memcpy(hash, md2->X, 16);

    return CRYPT_OK;
}
