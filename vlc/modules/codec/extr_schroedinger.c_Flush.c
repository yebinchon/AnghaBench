
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int i_lastpts; int p_schro; } ;
typedef TYPE_2__ decoder_sys_t ;


 int VLC_TICK_INVALID ;
 int schro_decoder_reset (int ) ;

__attribute__((used)) static void Flush( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    schro_decoder_reset( p_sys->p_schro );
    p_sys->i_lastpts = VLC_TICK_INVALID;
}
