
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int stream_t ;
struct TYPE_5__ {struct TYPE_5__* p_first; struct TYPE_5__* p_last; } ;
typedef TYPE_1__ MP4_Box_t ;


 int MP4_BoxOffsetUp (TYPE_1__*,int ) ;
 int MP4_ReadBoxContainerChildren (int *,TYPE_1__*,int *) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_MemoryNew (int *,int *,int ,int) ;

__attribute__((used)) static int MP4_ReadBoxContainerRawInBox( stream_t *p_stream, MP4_Box_t *p_container,
                                         uint8_t *p_buffer, uint64_t i_size, uint64_t i_offset )
{
    if(!p_container)
        return 0;
    stream_t *p_substream = vlc_stream_MemoryNew( p_stream, p_buffer, i_size,
                                                  1 );
    if( !p_substream )
        return 0;
    MP4_Box_t *p_last = p_container->p_last;
    MP4_ReadBoxContainerChildren( p_substream, p_container, ((void*)0) );
    vlc_stream_Delete( p_substream );

    if( p_container )
    {
        MP4_Box_t *p_box = p_last ? p_last : p_container->p_first;
        MP4_BoxOffsetUp(p_box, i_offset);
    }

    return 1;
}
