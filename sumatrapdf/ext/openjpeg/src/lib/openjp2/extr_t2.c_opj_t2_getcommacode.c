
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_bio_t ;
typedef scalar_t__ OPJ_UINT32 ;


 scalar_t__ opj_bio_read (int *,int) ;

__attribute__((used)) static OPJ_UINT32 opj_t2_getcommacode(opj_bio_t *bio)
{
    OPJ_UINT32 n = 0;
    while (opj_bio_read(bio, 1)) {
        ++n;
    }
    return n;
}
