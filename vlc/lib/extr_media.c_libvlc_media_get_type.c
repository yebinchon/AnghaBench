
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int libvlc_media_type_t ;
struct TYPE_5__ {TYPE_2__* p_input_item; } ;
typedef TYPE_1__ libvlc_media_t ;
struct TYPE_6__ {int i_type; int lock; } ;
typedef TYPE_2__ input_item_t ;
typedef enum input_item_type_e { ____Placeholder_input_item_type_e } input_item_type_e ;
 int assert (TYPE_1__*) ;
 int libvlc_media_type_directory ;
 int libvlc_media_type_disc ;
 int libvlc_media_type_file ;
 int libvlc_media_type_playlist ;
 int libvlc_media_type_stream ;
 int libvlc_media_type_unknown ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

libvlc_media_type_t libvlc_media_get_type( libvlc_media_t *p_md )
{
    assert( p_md );

    enum input_item_type_e i_type;
    input_item_t *p_input_item = p_md->p_input_item;

    vlc_mutex_lock( &p_input_item->lock );
    i_type = p_md->p_input_item->i_type;
    vlc_mutex_unlock( &p_input_item->lock );

    switch( i_type )
    {
    case 131:
        return libvlc_media_type_file;
    case 130:
    case 133:
        return libvlc_media_type_directory;
    case 132:
        return libvlc_media_type_disc;
    case 128:
        return libvlc_media_type_stream;
    case 129:
        return libvlc_media_type_playlist;
    default:
        return libvlc_media_type_unknown;
    }
}
