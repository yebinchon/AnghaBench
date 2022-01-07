
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ct; int buf; } ;
typedef TYPE_1__ opj_bio_t ;
typedef int OPJ_UINT32 ;


 int opj_bio_bytein (TYPE_1__*) ;

__attribute__((used)) static OPJ_UINT32 opj_bio_getbit(opj_bio_t *bio)
{
    if (bio->ct == 0) {
        opj_bio_bytein(
            bio);
    }
    bio->ct--;
    return (bio->buf >> bio->ct) & 1;
}
