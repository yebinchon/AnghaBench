
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_image_t ;


 scalar_t__ opj_calloc (int,int) ;

opj_image_t* opj_image_create0(void)
{
    opj_image_t *image = (opj_image_t*)opj_calloc(1, sizeof(opj_image_t));
    return image;
}
