
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_memory_keystore; } ;
typedef TYPE_1__ libvlc_priv_t ;
typedef int libvlc_int_t ;


 int assert (int ) ;
 TYPE_1__* libvlc_priv (int *) ;
 int vlc_keystore_release (int *) ;

void
libvlc_InternalKeystoreClean(libvlc_int_t *p_libvlc)
{
    assert(p_libvlc != ((void*)0));
    libvlc_priv_t *p_priv = libvlc_priv(p_libvlc);

    if (p_priv->p_memory_keystore != ((void*)0))
    {
        vlc_keystore_release(p_priv->p_memory_keystore);
        p_priv->p_memory_keystore = ((void*)0);
    }
}
