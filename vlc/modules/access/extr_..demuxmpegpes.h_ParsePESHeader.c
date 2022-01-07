
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int stime_t ;


 int ExtractPESTimestamp (int const*,int const,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*) ;

__attribute__((used)) inline
static int ParsePESHeader( vlc_object_t *p_object, const uint8_t *p_header, size_t i_header,
                           unsigned *pi_skip, stime_t *pi_dts, stime_t *pi_pts,
                           uint8_t *pi_stream_id, bool *pb_pes_scambling )
{
    unsigned i_skip;

    if ( i_header < 9 )
        return VLC_EGENERIC;

    *pi_stream_id = p_header[3];

    switch( p_header[3] )
    {
    case 0xBC:
    case 0xBE:
    case 0xBF:
    case 0xF0:
    case 0xF1:
    case 0xFF:
    case 0xF2:
    case 0xF8:
        i_skip = 6;
        if( pb_pes_scambling )
            *pb_pes_scambling = 0;
        break;
    default:
        if( ( p_header[6]&0xC0 ) == 0x80 )
        {

            i_skip = p_header[8] + 9;

            if( pb_pes_scambling )
                *pb_pes_scambling = p_header[6]&0x30;

            if( p_header[7]&0x80 )
            {
                if( i_header >= 9 + 5 )
                   (void) ExtractPESTimestamp( &p_header[9], p_header[7] >> 6, pi_pts );

                if( ( p_header[7]&0x40 ) &&
                    i_header >= 14 + 5 )
                   (void) ExtractPESTimestamp( &p_header[14], 0x01, pi_dts );
            }
        }
        else
        {




            i_skip = 6;

            if( pb_pes_scambling )
                *pb_pes_scambling = 0;

            while( i_skip < 23 && p_header[i_skip] == 0xff )
            {
                i_skip++;
                if( i_header < i_skip + 1 )
                    return VLC_EGENERIC;
            }
            if( i_skip == 23 )
            {
                msg_Err( p_object, "too much MPEG-1 stuffing" );
                return VLC_EGENERIC;
            }

            if( ( p_header[i_skip] & 0xC0 ) == 0x40 )
            {
                i_skip += 2;
            }

            if( i_header < i_skip + 1 )
                return VLC_EGENERIC;

            if( p_header[i_skip]&0x20 )
            {
                if( i_header >= i_skip + 5 )
                    (void) ExtractPESTimestamp( &p_header[i_skip], p_header[i_skip] >> 4, pi_pts );

                if( ( p_header[i_skip]&0x10 ) &&
                    i_header >= i_skip + 10 )
                {
                    (void) ExtractPESTimestamp( &p_header[i_skip+5], 0x01, pi_dts );
                    i_skip += 10;
                }
                else
                {
                    i_skip += 5;
                }
            }
            else
            {
                if( (p_header[i_skip] & 0xFF) != 0x0F )
                    return VLC_EGENERIC;
                i_skip += 1;
            }
        }
        break;
    }

    *pi_skip = i_skip;
    return VLC_SUCCESS;
}
