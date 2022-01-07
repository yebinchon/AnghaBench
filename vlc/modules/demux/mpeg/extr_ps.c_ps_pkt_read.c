
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stream_t ;
typedef int block_t ;


 int const PS_STREAM_ID_END_STREAM ;
 int const PS_STREAM_ID_PACK_HEADER ;
 int ps_pkt_size (int const*,int) ;
 int * vlc_stream_Block (int *,int) ;
 int vlc_stream_Peek (int *,int const**,int) ;

__attribute__((used)) static block_t *ps_pkt_read( stream_t *s )
{
    const uint8_t *p_peek;
    int i_peek = vlc_stream_Peek( s, &p_peek, 14 );
    if( i_peek < 4 )
        return ((void*)0);

    int i_size = ps_pkt_size( p_peek, i_peek );
    if( i_size <= 6 && p_peek[3] > PS_STREAM_ID_PACK_HEADER )
    {

        i_size = 6;
        for( ;; )
        {
            i_peek = vlc_stream_Peek( s, &p_peek, i_size + 1024 );
            if( i_peek <= i_size + 4 )
            {
                return ((void*)0);
            }
            while( i_size <= i_peek - 4 )
            {
                if( p_peek[i_size] == 0x00 && p_peek[i_size+1] == 0x00 &&
                    p_peek[i_size+2] == 0x01 && p_peek[i_size+3] >= PS_STREAM_ID_END_STREAM )
                {
                    return vlc_stream_Block( s, i_size );
                }
                i_size++;
            }
        }
    }
    else
    {

        return vlc_stream_Block( s, i_size );
    }

    return ((void*)0);
}
