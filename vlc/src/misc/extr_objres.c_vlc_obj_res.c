
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct vlc_res {int dummy; } ;
struct TYPE_2__ {struct vlc_res* resources; } ;


 TYPE_1__* vlc_internals (int *) ;

__attribute__((used)) static struct vlc_res **vlc_obj_res(vlc_object_t *obj)
{
    return &vlc_internals(obj)->resources;
}
