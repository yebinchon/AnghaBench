
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_download; int p_libvlc; } ;
typedef TYPE_1__ update_t ;
struct TYPE_9__ {int thread; int aborted; int * psz_destdir; TYPE_1__* p_update; } ;
typedef TYPE_2__ update_download_thread_t ;


 int VLC_THREAD_PRIORITY_LOW ;
 int assert (TYPE_1__*) ;
 int atomic_store (int *,int) ;
 int * strdup (char const*) ;
 int update_DownloadReal ;
 int vlc_clone (int *,int ,TYPE_2__*,int ) ;
 TYPE_2__* vlc_custom_create (int ,int,char*) ;
 int vlc_join (int ,int *) ;
 int vlc_object_delete (TYPE_2__*) ;

void update_Download( update_t *p_update, const char *psz_destdir )
{
    assert( p_update );


    if( p_update->p_download )
    {
        atomic_store( &p_update->p_download->aborted, 1 );
        vlc_join( p_update->p_download->thread, ((void*)0) );
        vlc_object_delete(p_update->p_download);
    }

    update_download_thread_t *p_udt =
        vlc_custom_create( p_update->p_libvlc, sizeof( *p_udt ),
                           "update download" );
    if( !p_udt )
        return;

    p_udt->p_update = p_update;
    p_update->p_download = p_udt;
    p_udt->psz_destdir = psz_destdir ? strdup( psz_destdir ) : ((void*)0);

    atomic_store(&p_udt->aborted, 0);
    vlc_clone( &p_udt->thread, update_DownloadReal, p_udt, VLC_THREAD_PRIORITY_LOW );
}
