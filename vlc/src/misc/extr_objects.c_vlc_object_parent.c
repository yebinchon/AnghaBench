
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int * parent; } ;


 TYPE_1__* vlc_internals (int *) ;

vlc_object_t *(vlc_object_parent)(vlc_object_t *obj)
{
    return vlc_internals(obj)->parent;
}
