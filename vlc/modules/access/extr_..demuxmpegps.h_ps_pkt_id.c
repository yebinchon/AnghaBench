
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int ps_pkt_id( const uint8_t *p_pkt, size_t i_pkt )
{
    if(unlikely(i_pkt < 4))
        return 0;
    if( p_pkt[3] == 0xbd )
    {
        uint8_t i_sub_id = 0;
        if( i_pkt >= 9 &&
            i_pkt > 9 + (size_t)p_pkt[8] )
        {
            const unsigned i_start = 9 + p_pkt[8];
            i_sub_id = p_pkt[i_start];

            if( (i_sub_id & 0xfe) == 0xa0 &&
                i_pkt >= i_start + 7 &&
                ( p_pkt[i_start + 5] >= 0xc0 ||
                  p_pkt[i_start + 6] != 0x80 ) )
            {



                return 0xa000 | (i_sub_id & 0x01);
            }
        }


        return 0xbd00 | i_sub_id;
    }
    else if( i_pkt >= 9 &&
             p_pkt[3] == 0xfd &&
             (p_pkt[6]&0xC0) == 0x80 &&
             (p_pkt[7]&0x01) == 0x01 )
    {

        const uint8_t i_flags = p_pkt[7];
        unsigned int i_skip = 9;


        if( (i_flags & 0x80 ) )
        {
            i_skip += 5;
            if( (i_flags & 0x40) )
                i_skip += 5;
        }
        if( (i_flags & 0x20 ) )
            i_skip += 6;
        if( (i_flags & 0x10 ) )
            i_skip += 3;
        if( (i_flags & 0x08 ) )
            i_skip += 1;
        if( (i_flags & 0x04 ) )
            i_skip += 1;
        if( (i_flags & 0x02 ) )
            i_skip += 2;

        if( i_skip < i_pkt && (p_pkt[i_skip]&0x01) )
        {
            const uint8_t i_flags2 = p_pkt[i_skip];


            i_skip += 1;
            if( i_flags2 & 0x80 )
                i_skip += 16;
            if( (i_flags2 & 0x40) && i_skip < i_pkt )
                i_skip += 1 + p_pkt[i_skip];
            if( i_flags2 & 0x20 )
                i_skip += 2;
            if( i_flags2 & 0x10 )
                i_skip += 2;

            if( i_skip + 1 < i_pkt )
            {
                const int i_extension_field_length = p_pkt[i_skip]&0x7f;
                if( i_extension_field_length >=1 )
                {
                    int i_stream_id_extension_flag = (p_pkt[i_skip+1] >> 7)&0x1;
                    if( i_stream_id_extension_flag == 0 )
                        return 0xfd00 | (p_pkt[i_skip+1]&0x7f);
                }
            }
        }
    }
    return p_pkt[3];
}
