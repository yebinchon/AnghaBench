
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ct; scalar_t__ buf; int * bp; int * end; int * start; } ;
typedef TYPE_1__ opj_bio_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_BYTE ;



void opj_bio_init_enc(opj_bio_t *bio, OPJ_BYTE *bp, OPJ_UINT32 len)
{
    bio->start = bp;
    bio->end = bp + len;
    bio->bp = bp;
    bio->buf = 0;
    bio->ct = 8;
}
