
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_5__ {size_t i_size; scalar_t__ i_pos; } ;
typedef TYPE_1__ MP4_Box_t ;


 int MP4_ReadBoxContainerChildren (int *,TYPE_1__*,int *) ;
 scalar_t__ MP4_Seek (int *,scalar_t__) ;
 scalar_t__ mp4_box_headersize (TYPE_1__*) ;

__attribute__((used)) static int MP4_ReadBoxContainer( stream_t *p_stream, MP4_Box_t *p_container )
{
    if( p_container->i_size &&
        ( p_container->i_size <= (size_t)mp4_box_headersize(p_container ) + 8 ) )
    {

        return 1;
    }


    if ( MP4_Seek( p_stream, p_container->i_pos +
                      mp4_box_headersize( p_container ) ) )
        return 0;
    return MP4_ReadBoxContainerChildren( p_stream, p_container, ((void*)0) );
}
