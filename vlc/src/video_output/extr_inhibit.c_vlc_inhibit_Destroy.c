
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_inhibit_t ;
struct TYPE_2__ {int module; } ;
typedef TYPE_1__ inhibit_t ;


 int assert (int ) ;
 int module_unneed (int *,int ) ;
 int vlc_object_delete (int *) ;

void vlc_inhibit_Destroy (vlc_inhibit_t *ih)
{
    assert (ih != ((void*)0));

    module_unneed (ih, ((inhibit_t *)ih)->module);
    vlc_object_delete(ih);
}
