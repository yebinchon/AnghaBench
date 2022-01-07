
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int * psz_desc; int * psz_url; } ;
struct TYPE_5__ {int * p_pkey; int * p_check; int * p_download; TYPE_1__ release; int p_libvlc; int lock; } ;
typedef TYPE_2__ update_t ;


 int assert (int *) ;
 scalar_t__ malloc (int) ;
 int vlc_gcrypt_init () ;
 int vlc_mutex_init (int *) ;
 int vlc_object_instance (int *) ;

update_t *update_New( vlc_object_t *p_this )
{
    update_t *p_update;
    assert( p_this );

    p_update = (update_t *)malloc( sizeof( update_t ) );
    if( !p_update ) return ((void*)0);

    vlc_mutex_init( &p_update->lock );

    p_update->p_libvlc = vlc_object_instance(p_this);

    p_update->release.psz_url = ((void*)0);
    p_update->release.psz_desc = ((void*)0);

    p_update->p_download = ((void*)0);
    p_update->p_check = ((void*)0);

    p_update->p_pkey = ((void*)0);
    vlc_gcrypt_init();

    return p_update;
}
