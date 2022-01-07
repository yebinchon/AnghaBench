
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_ext_data; int * pf_ext_update; int * p_cbs_data; int cbs; int dialog_array; int lock; } ;
typedef TYPE_1__ vlc_dialog_provider ;
typedef int libvlc_int_t ;
struct TYPE_5__ {TYPE_1__* p_dialog_provider; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 TYPE_3__* libvlc_priv (int *) ;
 TYPE_1__* malloc (int) ;
 int memset (int *,int ,int) ;
 int vlc_array_init (int *) ;
 int vlc_mutex_init (int *) ;

int
libvlc_InternalDialogInit(libvlc_int_t *p_libvlc)
{
    assert(p_libvlc != ((void*)0));
    vlc_dialog_provider *p_provider = malloc(sizeof(*p_provider));
    if (p_provider == ((void*)0))
        return VLC_EGENERIC;

    vlc_mutex_init(&p_provider->lock);
    vlc_array_init(&p_provider->dialog_array);

    memset(&p_provider->cbs, 0, sizeof(p_provider->cbs));
    p_provider->p_cbs_data = ((void*)0);

    p_provider->pf_ext_update = ((void*)0);
    p_provider->p_ext_data = ((void*)0);
    libvlc_priv(p_libvlc)->p_dialog_provider = p_provider;

    return VLC_SUCCESS;
}
