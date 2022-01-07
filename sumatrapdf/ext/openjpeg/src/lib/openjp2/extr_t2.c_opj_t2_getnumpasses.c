
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_bio_t ;
typedef int OPJ_UINT32 ;


 int opj_bio_read (int *,int) ;

__attribute__((used)) static OPJ_UINT32 opj_t2_getnumpasses(opj_bio_t *bio)
{
    OPJ_UINT32 n;
    if (!opj_bio_read(bio, 1)) {
        return 1;
    }
    if (!opj_bio_read(bio, 1)) {
        return 2;
    }
    if ((n = opj_bio_read(bio, 2)) != 3) {
        return (3 + n);
    }
    if ((n = opj_bio_read(bio, 5)) != 31) {
        return (6 + n);
    }
    return (37 + opj_bio_read(bio, 7));
}
