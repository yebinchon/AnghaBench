
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_bio_t ;
typedef unsigned int OPJ_UINT32 ;
typedef unsigned int OPJ_INT32 ;


 int assert (int) ;
 int opj_bio_putbit (int *,unsigned int) ;

void opj_bio_write(opj_bio_t *bio, OPJ_UINT32 v, OPJ_UINT32 n)
{
    OPJ_INT32 i;

    assert((n > 0U) && (n <= 32U));
    for (i = (OPJ_INT32)n - 1; i >= 0; i--) {
        opj_bio_putbit(bio, (v >> i) & 1);
    }
}
