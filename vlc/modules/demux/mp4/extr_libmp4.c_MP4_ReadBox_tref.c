
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
typedef int stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_9__ {int i_size; int i_pos; } ;
typedef TYPE_1__ MP4_Box_t ;


 int MP4_BoxAddChild (TYPE_1__*,TYPE_1__*) ;
 int MP4_BoxFree (TYPE_1__*) ;
 TYPE_1__* MP4_ReadBoxUsing (int *,TYPE_1__*,int ) ;
 int MP4_ReadBox_TrackReference ;
 scalar_t__ MP4_Seek (int *,int) ;
 scalar_t__ mp4_box_headersize (TYPE_1__*) ;
 scalar_t__ vlc_stream_Read (int *,int *,scalar_t__) ;

__attribute__((used)) static int MP4_ReadBox_tref( stream_t *p_stream, MP4_Box_t *p_box )
{

    ssize_t i_header = mp4_box_headersize( p_box );
    if( vlc_stream_Read( p_stream, ((void*)0), i_header ) != i_header )
        return 0;

    uint64_t i_remain = p_box->i_size - 8;
    while ( i_remain > 8 )
    {
        MP4_Box_t *p_childbox = MP4_ReadBoxUsing( p_stream, p_box,
                                                  MP4_ReadBox_TrackReference );
        if( !p_childbox || i_remain < p_childbox->i_size )
        {
            MP4_BoxFree( p_childbox );
            break;
        }

        MP4_BoxAddChild( p_box, p_childbox );
        i_remain -= p_childbox->i_size;
    }

    return MP4_Seek( p_stream, p_box->i_pos + p_box->i_size ) ? 0 : 1;
}
