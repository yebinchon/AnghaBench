
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_bio_t ;


 int opj_free (int *) ;

void opj_bio_destroy(opj_bio_t *bio)
{
    if (bio) {
        opj_free(bio);
    }
}
