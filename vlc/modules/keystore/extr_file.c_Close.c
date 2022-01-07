
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {struct TYPE_4__* psz_file; } ;
typedef TYPE_1__ vlc_keystore_sys ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ vlc_keystore ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
Close(vlc_object_t *p_this)
{
    vlc_keystore *p_keystore = (vlc_keystore *)p_this;
    vlc_keystore_sys *p_sys = p_keystore->p_sys;

    free(p_sys->psz_file);
    free(p_sys);
}
