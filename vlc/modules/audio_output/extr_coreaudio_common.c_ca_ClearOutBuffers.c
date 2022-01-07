
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct aout_sys_common {scalar_t__ i_out_size; int * p_out_chain; int ** pp_out_last; } ;
struct TYPE_3__ {scalar_t__ sys; } ;
typedef TYPE_1__ audio_output_t ;


 int block_ChainRelease (int *) ;

__attribute__((used)) static void
ca_ClearOutBuffers(audio_output_t *p_aout)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    block_ChainRelease(p_sys->p_out_chain);
    p_sys->p_out_chain = ((void*)0);
    p_sys->pp_out_last = &p_sys->p_out_chain;

    p_sys->i_out_size = 0;
}
