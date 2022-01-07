
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 scalar_t__ AVCi_lookup (int ,int,int const**,int*,int const**,int*) ;
 scalar_t__ malloc (int) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static uint8_t * AVCi_create_AnnexB( uint16_t i_res, bool b_interlaced, int *pi_avcC )
{
    const uint8_t *p_pps, *p_sps;
    uint8_t i_sps, i_pps;
    uint8_t *p_data = ((void*)0);
    const uint8_t rgi_startcode[] = {0,0,0,1};
    if( AVCi_lookup( i_res, b_interlaced,
                     &p_sps, &i_sps, &p_pps, &i_pps ) )
    {
        int i_size = i_pps + i_sps + 2 * 5;
        if( (p_data = (uint8_t *) malloc(i_size)) )
        {
            *pi_avcC = i_size;
            memcpy(p_data, rgi_startcode, 4);
            p_data[4] = 0x67;
            memcpy(&p_data[5], p_sps, i_sps);
            memcpy(&p_data[5 + i_sps], rgi_startcode, 4);
            p_data[9 + i_sps] = 0x68;
            memcpy(&p_data[10 + i_sps], p_pps, i_pps);
        }
    }
    return p_data;
}
