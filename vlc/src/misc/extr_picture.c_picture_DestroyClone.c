
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_3__ {int * opaque; } ;
struct TYPE_4__ {TYPE_1__ gc; } ;
typedef TYPE_2__ picture_priv_t ;


 int picture_Release (int *) ;

__attribute__((used)) static void picture_DestroyClone(picture_t *clone)
{
    picture_t *picture = ((picture_priv_t *)clone)->gc.opaque;

    picture_Release(picture);
}
