
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_libvlc_instance; int catname_to_submedialist; int p_mlist; int * p_sd; } ;
typedef TYPE_1__ libvlc_media_discoverer_t ;


 int MediaListDictValueRelease ;
 int free (TYPE_1__*) ;
 int libvlc_media_discoverer_stop (TYPE_1__*) ;
 int libvlc_media_list_release (int ) ;
 int libvlc_release (int ) ;
 int vlc_dictionary_clear (int *,int ,int *) ;

void
libvlc_media_discoverer_release( libvlc_media_discoverer_t * p_mdis )
{
    if( p_mdis->p_sd != ((void*)0) )
        libvlc_media_discoverer_stop( p_mdis );

    libvlc_media_list_release( p_mdis->p_mlist );

    vlc_dictionary_clear( &p_mdis->catname_to_submedialist,
        MediaListDictValueRelease, ((void*)0) );

    libvlc_release( p_mdis->p_libvlc_instance );

    free( p_mdis );
}
