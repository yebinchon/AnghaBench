
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_bio_t ;


 scalar_t__ opj_malloc (int) ;

opj_bio_t* opj_bio_create(void)
{
    opj_bio_t *bio = (opj_bio_t*)opj_malloc(sizeof(opj_bio_t));
    return bio;
}
