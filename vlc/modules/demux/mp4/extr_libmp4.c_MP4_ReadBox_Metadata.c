
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int stream_t ;
typedef int MP4_Box_t ;


 int const ATOM_data ;
 int MP4_ReadBoxContainerChildren (int *,int *,int const*) ;
 int vlc_stream_Peek (int *,int const**,int) ;
 int vlc_stream_Read (int *,int *,int) ;

__attribute__((used)) static int MP4_ReadBox_Metadata( stream_t *p_stream, MP4_Box_t *p_box )
{
    const uint8_t *p_peek;
    if ( vlc_stream_Peek( p_stream, &p_peek, 16 ) < 16 )
        return 0;
    if ( vlc_stream_Read( p_stream, ((void*)0), 8 ) < 8 )
        return 0;
    const uint32_t stoplist[] = { ATOM_data, 0 };
    return MP4_ReadBoxContainerChildren( p_stream, p_box, stoplist );
}
