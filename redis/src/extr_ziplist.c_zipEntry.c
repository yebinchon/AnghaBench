
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prevrawlensize; int lensize; int headersize; unsigned char* p; int len; int encoding; int prevrawlen; } ;
typedef TYPE_1__ zlentry ;


 int ZIP_DECODE_LENGTH (unsigned char*,int ,int,int ) ;
 int ZIP_DECODE_PREVLEN (unsigned char*,int,int ) ;

void zipEntry(unsigned char *p, zlentry *e) {

    ZIP_DECODE_PREVLEN(p, e->prevrawlensize, e->prevrawlen);
    ZIP_DECODE_LENGTH(p + e->prevrawlensize, e->encoding, e->lensize, e->len);
    e->headersize = e->prevrawlensize + e->lensize;
    e->p = p;
}
