
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int uint8_t ;
typedef int stime_t ;


 int ExtractPESTimestamp (int const*,int,int *) ;
 int ExtractPackHeaderTimestamp (int const*) ;
 int FROM_SCALE (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static inline int ps_pkt_parse_pack( const uint8_t *p_pkt, size_t i_pkt,
                                     vlc_tick_t *pi_scr, int *pi_mux_rate )
{
    const uint8_t *p = p_pkt;
    if( i_pkt >= 14 && (p[4] >> 6) == 0x01 )
    {
        *pi_scr = FROM_SCALE( ExtractPackHeaderTimestamp( &p[4] ) );
        *pi_mux_rate = ( p[10] << 14 )|( p[11] << 6 )|( p[12] >> 2);
    }
    else if( i_pkt >= 12 && (p[4] >> 4) == 0x02 )
    {
        stime_t i_scr;
        if(!ExtractPESTimestamp( &p[4], 0x02, &i_scr ))
            return VLC_EGENERIC;
        *pi_scr = FROM_SCALE( i_scr );
        *pi_mux_rate = ( ( p[9]&0x7f )<< 15 )|( p[10] << 7 )|( p[11] >> 1);
    }
    else
    {
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
