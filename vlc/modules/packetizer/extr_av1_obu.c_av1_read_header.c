
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct av1_header_info_s {void* spatial_id; void* temporal_id; void* obu_type; } ;
typedef scalar_t__ obu_u1_t ;
typedef int bs_t ;


 void* bs_read (int *,int) ;
 scalar_t__ bs_read1 (int *) ;
 int bs_remain (int *) ;
 int bs_skip (int *,int) ;

__attribute__((used)) static bool av1_read_header(bs_t *p_bs, struct av1_header_info_s *p_hdr)
{
    if(bs_read1(p_bs))
        return 0;
    p_hdr->obu_type = bs_read(p_bs, 4);
    const obu_u1_t obu_extension_flag = bs_read1(p_bs);
    const obu_u1_t obu_has_size_field = bs_read1(p_bs);
    if(bs_read1(p_bs))
        return 0;
    if(obu_extension_flag)
    {
        if(bs_remain(p_bs) < 8)
            return 0;
        p_hdr->temporal_id = bs_read(p_bs, 3);
        p_hdr->spatial_id = bs_read(p_bs, 2);
        bs_skip(p_bs, 3);
    }
    if(obu_has_size_field)
    {
        for (uint8_t i = 0; i < 8; i++)
        {
            if(bs_remain(p_bs) < 8)
                return 0;
            uint8_t v = bs_read(p_bs, 8);
            if (!(v & 0x80))
                break;
            if(i == 7)
                return 0;
        }
    }
    return 1;
}
