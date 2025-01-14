
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef int uint16_t ;
typedef int demux_t ;


 int HandleAudioConfig (int *,int const*,unsigned int,int) ;
 int HandleAudioData (int *,int const*,unsigned int,int,int const) ;
 int msg_Warn (int *,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void HandleAncillary( demux_t *p_demux, const uint16_t *p_anc,
                             unsigned int i_size )
{
    uint8_t i_data_count;

    if ( i_size < 7
          || p_anc[0] != 0x0 || p_anc[1] != 0x3ff || p_anc[2] != 0x3ff )
        return;

    i_data_count = p_anc[5] & 0xff;
    if ( i_size - 6 < i_data_count )
    {
        msg_Warn( p_demux, "malformed ancillary packet (size %u > %u)",
                  i_data_count, i_size - 6 );
        return;
    }

    switch ( p_anc[3] )
    {
    case 0x2ff:
        HandleAudioData( p_demux, p_anc + 6, i_data_count, 1, p_anc[4] & 0xff );
        break;
    case 0x1fd:
        HandleAudioData( p_demux, p_anc + 6, i_data_count, 2, p_anc[4] & 0xff );
        break;
    case 0x1fb:
        HandleAudioData( p_demux, p_anc + 6, i_data_count, 3, p_anc[4] & 0xff );
        break;
    case 0x2f9:
        HandleAudioData( p_demux, p_anc + 6, i_data_count, 4, p_anc[4] & 0xff );
        break;

    case 0x1ef:
        HandleAudioConfig( p_demux, p_anc + 6, i_data_count, 1 );
        break;
    case 0x2ee:
        HandleAudioConfig( p_demux, p_anc + 6, i_data_count, 2 );
        break;
    case 0x2ed:
        HandleAudioConfig( p_demux, p_anc + 6, i_data_count, 3 );
        break;
    case 0x1ec:
        HandleAudioConfig( p_demux, p_anc + 6, i_data_count, 4 );
        break;


    case 0x1fe:
    case 0x2fc:
    case 0x2fa:
    case 0x1f8:

    default:
        break;

    case 0x88:
        p_anc += 7;
        i_size -= 7;
        while ( i_size >= 7 && (p_anc[0] != 0x0 || p_anc[1] != 0x3ff
                                 || p_anc[2] != 0x3ff) )
        {
            p_anc++;
            i_size--;
        }
        if ( i_size >= 7 )
            HandleAncillary( p_demux, p_anc, i_size );
        return;
    }

    return HandleAncillary( p_demux, p_anc + i_data_count + 7,
                            i_size - i_data_count - 7 );

}
