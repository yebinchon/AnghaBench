
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; scalar_t__ ct; } ;
typedef TYPE_1__ opj_bio_t ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_bio_bytein (TYPE_1__*) ;

OPJ_BOOL opj_bio_inalign(opj_bio_t *bio)
{
    if ((bio->buf & 0xff) == 0xff) {
        if (! opj_bio_bytein(bio)) {
            return OPJ_FALSE;
        }
    }
    bio->ct = 0;
    return OPJ_TRUE;
}
