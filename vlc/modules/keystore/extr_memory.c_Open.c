
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_keystore_sys ;
struct TYPE_3__ {int pf_remove; int pf_find; int pf_store; TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_keystore ;
struct TYPE_4__ {int lock; } ;


 int Find ;
 int Remove ;
 int Store ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 TYPE_2__* calloc (int,int) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static int
Open(vlc_object_t *p_this)
{
    vlc_keystore *p_keystore = (vlc_keystore *)p_this;
    p_keystore->p_sys = calloc(1, sizeof(vlc_keystore_sys));
    if (!p_keystore->p_sys)
        return VLC_EGENERIC;

    vlc_mutex_init(&p_keystore->p_sys->lock);
    p_keystore->pf_store = Store;
    p_keystore->pf_find = Find;
    p_keystore->pf_remove = Remove;

    return VLC_SUCCESS;
}
