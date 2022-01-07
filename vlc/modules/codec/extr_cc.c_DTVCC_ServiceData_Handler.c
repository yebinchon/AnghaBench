
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint8_t ;
struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_4__ {int p_cea708; } ;
typedef TYPE_2__ decoder_sys_t ;


 int CEA708_Decoder_Push (int ,int ,int const*,size_t) ;

__attribute__((used)) static void DTVCC_ServiceData_Handler( void *priv, uint8_t i_sid, vlc_tick_t i_time,
                                       const uint8_t *p_data, size_t i_data )
{
    decoder_t *p_dec = priv;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( i_sid == 1 )
        CEA708_Decoder_Push( p_sys->p_cea708, i_time, p_data, i_data );
}
