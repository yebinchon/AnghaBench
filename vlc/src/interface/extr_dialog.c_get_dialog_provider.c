
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ no_interact; } ;
typedef TYPE_1__ vlc_object_t ;
typedef int vlc_dialog_provider ;
struct TYPE_6__ {int * p_dialog_provider; } ;


 int assert (int ) ;
 TYPE_3__* libvlc_priv (int ) ;
 scalar_t__ vlc_killed () ;
 int vlc_object_instance (TYPE_1__*) ;

__attribute__((used)) static inline vlc_dialog_provider *
get_dialog_provider(vlc_object_t *p_obj, bool b_check_interact)
{
    if ((b_check_interact && p_obj->no_interact) || vlc_killed())
        return ((void*)0);

    vlc_dialog_provider *p_provider =
        libvlc_priv(vlc_object_instance(p_obj))->p_dialog_provider;
    assert(p_provider != ((void*)0));
    return p_provider;
}
