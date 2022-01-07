
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int stream_t ;
typedef scalar_t__ ssize_t ;


 int vlc_stream_Delete (int *) ;
 int * vlc_stream_MemoryNew (int *,int *,int const,int) ;
 scalar_t__ vlc_stream_Peek (int *,int const**,int) ;
 char* vlc_stream_ReadLine (int *) ;
 scalar_t__ vlc_stream_Tell (int *) ;

__attribute__((used)) inline static char * peek_Readline( stream_t *p_demuxstream, uint64_t *pi_offset )
{
    uint8_t *p_peek;
    ssize_t i_peek = vlc_stream_Peek( p_demuxstream, (const uint8_t **) &p_peek,
                                  *pi_offset + 2048 );
    if( i_peek < 0 || (uint64_t) i_peek < *pi_offset )
        return ((void*)0);

    const uint64_t i_bufsize = (uint64_t) i_peek - *pi_offset;
    char *psz_line = ((void*)0);


    stream_t *p_memorystream = vlc_stream_MemoryNew( p_demuxstream,
                                                     &p_peek[*pi_offset],
                                                     i_bufsize, 1 );
    if( p_memorystream )
    {
        psz_line = vlc_stream_ReadLine( p_memorystream );

        *pi_offset += vlc_stream_Tell( p_memorystream );
        vlc_stream_Delete( p_memorystream );
    }

    return psz_line;
}
