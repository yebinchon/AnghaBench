
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {char const* const* ppsz_keys; } ;
typedef TYPE_1__ vlc_actions_t ;
struct TYPE_4__ {TYPE_1__* actions; } ;


 TYPE_2__* libvlc_priv (int ) ;
 int vlc_object_instance (int *) ;

const char* const*
vlc_actions_get_key_names(vlc_object_t *p_obj)
{
    vlc_actions_t *as = libvlc_priv(vlc_object_instance(p_obj))->actions;
    return as->ppsz_keys;
}
