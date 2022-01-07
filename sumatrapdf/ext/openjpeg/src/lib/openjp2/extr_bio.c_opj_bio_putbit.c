
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ct; int buf; } ;
typedef TYPE_1__ opj_bio_t ;
typedef int OPJ_UINT32 ;


 int opj_bio_byteout (TYPE_1__*) ;

__attribute__((used)) static void opj_bio_putbit(opj_bio_t *bio, OPJ_UINT32 b)
{
    if (bio->ct == 0) {
        opj_bio_byteout(
            bio);
    }
    bio->ct--;
    bio->buf |= b << bio->ct;
}
