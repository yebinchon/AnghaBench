
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int libarchive_t ;
struct TYPE_4__ {int * p_source; TYPE_1__* p_sys; } ;
typedef TYPE_2__ libarchive_callback_t ;
struct TYPE_3__ {int b_dead; int * source; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int VLC_UNUSED (int *) ;
 int vlc_stream_Delete (int *) ;
 scalar_t__ vlc_stream_Seek (int *,int ) ;

__attribute__((used)) static int libarchive_exit_cb( libarchive_t* p_arc, void* p_obj )
{
    VLC_UNUSED( p_arc );

    libarchive_callback_t* p_cb = (libarchive_callback_t*)p_obj;

    if( p_cb->p_sys->source == p_cb->p_source )
    {
        if( !p_cb->p_sys->b_dead && vlc_stream_Seek( p_cb->p_source, 0 ) )
            return ARCHIVE_FATAL;
    }
    else if( p_cb->p_source )
    {
        vlc_stream_Delete( p_cb->p_source );
        p_cb->p_source = ((void*)0);
    }

    return ARCHIVE_OK;
}
