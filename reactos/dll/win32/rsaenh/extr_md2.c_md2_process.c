
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int curlen; scalar_t__ buf; } ;
typedef TYPE_1__ md2_state ;


 int CRYPT_INVALID_ARG ;
 int CRYPT_OK ;
 unsigned long MIN (unsigned long,int) ;
 int md2_compress (TYPE_1__*) ;
 int md2_update_chksum (TYPE_1__*) ;
 int memcpy (scalar_t__,unsigned char const*,size_t) ;

int md2_process(md2_state *md2, const unsigned char *buf, unsigned long len)
{
    unsigned long n;

    if (md2->curlen > sizeof(md2->buf)) {
       return CRYPT_INVALID_ARG;
    }
    while (len > 0) {
        n = MIN(len, (16 - md2->curlen));
        memcpy(md2->buf + md2->curlen, buf, (size_t)n);
        md2->curlen += n;
        buf += n;
        len -= n;


        if (md2->curlen == 16) {
            md2_compress(md2);
            md2_update_chksum(md2);
            md2->curlen = 0;
        }
    }
    return CRYPT_OK;
}
