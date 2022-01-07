
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cp; int * image; } ;
typedef TYPE_1__ opj_t2_t ;
typedef int opj_image_t ;
typedef int opj_cp_t ;


 scalar_t__ opj_calloc (int,int) ;

opj_t2_t* opj_t2_create(opj_image_t *p_image, opj_cp_t *p_cp)
{

    opj_t2_t *l_t2 = (opj_t2_t*)opj_calloc(1, sizeof(opj_t2_t));
    if (!l_t2) {
        return ((void*)0);
    }

    l_t2->image = p_image;
    l_t2->cp = p_cp;

    return l_t2;
}
