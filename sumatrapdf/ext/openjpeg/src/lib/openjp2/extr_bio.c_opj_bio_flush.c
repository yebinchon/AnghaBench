
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ct; } ;
typedef TYPE_1__ opj_bio_t ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_bio_byteout (TYPE_1__*) ;

OPJ_BOOL opj_bio_flush(opj_bio_t *bio)
{
    if (! opj_bio_byteout(bio)) {
        return OPJ_FALSE;
    }
    if (bio->ct == 7) {
        if (! opj_bio_byteout(bio)) {
            return OPJ_FALSE;
        }
    }
    return OPJ_TRUE;
}
