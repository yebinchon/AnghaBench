
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_memory_keystore; } ;
typedef TYPE_1__ libvlc_priv_t ;
typedef int libvlc_int_t ;


 int VLC_EGENERIC ;
 int VLC_OBJECT (int *) ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 int * keystore_create (int ,char*) ;
 TYPE_1__* libvlc_priv (int *) ;

int
libvlc_InternalKeystoreInit(libvlc_int_t *p_libvlc)
{
    assert(p_libvlc != ((void*)0));
    libvlc_priv_t *p_priv = libvlc_priv(p_libvlc);

    p_priv->p_memory_keystore = keystore_create(VLC_OBJECT(p_libvlc), "memory");
    return p_priv->p_memory_keystore != ((void*)0) ? VLC_SUCCESS : VLC_EGENERIC;
}
