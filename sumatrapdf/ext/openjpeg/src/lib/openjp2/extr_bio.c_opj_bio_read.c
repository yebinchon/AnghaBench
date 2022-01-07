
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_bio_t ;
typedef unsigned int OPJ_UINT32 ;
typedef unsigned int OPJ_INT32 ;


 int assert (int) ;
 unsigned int opj_bio_getbit (int *) ;

OPJ_UINT32 opj_bio_read(opj_bio_t *bio, OPJ_UINT32 n)
{
    OPJ_INT32 i;
    OPJ_UINT32 v;

    assert((n > 0U) );






    v = 0U;
    for (i = (OPJ_INT32)n - 1; i >= 0; i--) {
        v |= opj_bio_getbit(bio) <<
             i;
    }
    return v;
}
