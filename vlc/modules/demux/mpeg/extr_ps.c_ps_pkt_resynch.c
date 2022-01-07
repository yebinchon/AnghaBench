
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stream_t ;


 int CDXA_PS ;
 int const PS_STREAM_ID_END_STREAM ;
 int const PS_STREAM_ID_PACK_HEADER ;
 int memcmp (int const*,int const*,int) ;
 int vlc_stream_Peek (int *,int const**,int) ;
 int vlc_stream_Read (int *,int *,int) ;

__attribute__((used)) static int ps_pkt_resynch( stream_t *s, int format, bool b_pack )
{
    const uint8_t *p_peek;
    int i_peek;
    int i_skip;

    if( vlc_stream_Peek( s, &p_peek, 4 ) < 4 )
    {
        return -1;
    }
    if( p_peek[0] == 0 && p_peek[1] == 0 && p_peek[2] == 1 &&
        p_peek[3] >= PS_STREAM_ID_END_STREAM )
    {
        return 1;
    }

    if( ( i_peek = vlc_stream_Peek( s, &p_peek, 512 ) ) < 4 )
    {
        return -1;
    }
    i_skip = 0;

    for( ;; )
    {
        if( i_peek < 4 )
        {
            break;
        }


        if( format == CDXA_PS && i_skip == 0 && i_peek >= 48 )
        {
            const uint8_t cdxasynccode[12] = { 0x00, 0xff, 0xff, 0xff, 0xff, 0xff,
                                               0xff, 0xff, 0xff, 0xff, 0xff, 0x00 };
            if( !memcmp( &p_peek[24], cdxasynccode, 12 ) )
            {
                i_peek -= 48;
                p_peek += 48;
                i_skip += 48;
                continue;
            }
        }

        if( p_peek[0] == 0 && p_peek[1] == 0 && p_peek[2] == 1 &&
            p_peek[3] >= PS_STREAM_ID_END_STREAM &&
            ( !b_pack || p_peek[3] == PS_STREAM_ID_PACK_HEADER ) )
        {
            return vlc_stream_Read( s, ((void*)0), i_skip ) == i_skip ? 1 : -1;
        }

        p_peek++;
        i_peek--;
        i_skip++;
    }
    return vlc_stream_Read( s, ((void*)0), i_skip ) == i_skip ? 0 : -1;
}
