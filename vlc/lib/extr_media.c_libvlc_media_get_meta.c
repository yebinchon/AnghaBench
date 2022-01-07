
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t libvlc_meta_t ;
struct TYPE_5__ {TYPE_3__* p_input_item; } ;
typedef TYPE_1__ libvlc_media_t ;
struct TYPE_6__ {int * psz_name; } ;


 char* input_item_GetMeta (TYPE_3__*,int ) ;
 char* input_item_GetNowPlayingFb (TYPE_3__*) ;
 size_t libvlc_meta_NowPlaying ;
 size_t libvlc_meta_Title ;
 int * libvlc_to_vlc_meta ;
 char* strdup (int *) ;

char *libvlc_media_get_meta( libvlc_media_t *p_md, libvlc_meta_t e_meta )
{
    char *psz_meta = ((void*)0);

    if( e_meta == libvlc_meta_NowPlaying )
    {
        psz_meta = input_item_GetNowPlayingFb( p_md->p_input_item );
    }
    else
    {
        psz_meta = input_item_GetMeta( p_md->p_input_item,
                                             libvlc_to_vlc_meta[e_meta] );

        if( psz_meta == ((void*)0) && e_meta == libvlc_meta_Title
         && p_md->p_input_item->psz_name != ((void*)0) )
            psz_meta = strdup( p_md->p_input_item->psz_name );
    }
    return psz_meta;
}
