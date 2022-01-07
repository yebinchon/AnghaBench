
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_bio_t ;
typedef int OPJ_UINT32 ;


 int opj_bio_write (int *,int,int) ;

__attribute__((used)) static void opj_t2_putnumpasses(opj_bio_t *bio, OPJ_UINT32 n)
{
    if (n == 1) {
        opj_bio_write(bio, 0, 1);
    } else if (n == 2) {
        opj_bio_write(bio, 2, 2);
    } else if (n <= 5) {
        opj_bio_write(bio, 0xc | (n - 3), 4);
    } else if (n <= 36) {
        opj_bio_write(bio, 0x1e0 | (n - 6), 9);
    } else if (n <= 164) {
        opj_bio_write(bio, 0xff80 | (n - 37), 16);
    }
}
