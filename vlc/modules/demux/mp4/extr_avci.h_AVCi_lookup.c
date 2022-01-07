
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int b_interlace; scalar_t__ i_res; int i_pps; int * p_pps; int i_sps; int * p_sps; } ;


 int AVCI_ENTRIES ;
 TYPE_1__* AVCi_lookup_table ;

__attribute__((used)) static inline bool AVCi_lookup(uint16_t i_res, bool b_i,
                               const uint8_t **pp_sps, uint8_t *pi_sps,
                               const uint8_t **pp_pps, uint8_t *pi_pps)
{
    for(int i=0; i<AVCI_ENTRIES; i++)
    {
        if(AVCi_lookup_table[i].b_interlace == b_i && AVCi_lookup_table[i].i_res == i_res)
        {
            *pp_sps = AVCi_lookup_table[i].p_sps;
            *pi_sps = AVCi_lookup_table[i].i_sps;
            *pp_pps = AVCi_lookup_table[i].p_pps;
            *pi_pps = AVCi_lookup_table[i].i_pps;
            return 1;
        }
    }
    return 0;
}
