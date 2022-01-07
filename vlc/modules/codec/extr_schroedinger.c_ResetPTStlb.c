
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ encoder_t ;
struct TYPE_7__ {TYPE_1__* pts_tlb; } ;
typedef TYPE_3__ encoder_sys_t ;
struct TYPE_5__ {int b_empty; } ;


 int SCHRO_PTS_TLB_SIZE ;

__attribute__((used)) static void ResetPTStlb( encoder_t *p_enc )
{
    encoder_sys_t *p_sys = p_enc->p_sys;
    for( int i = 0; i < SCHRO_PTS_TLB_SIZE; i++ )
    {
        p_sys->pts_tlb[i].b_empty = 1;
    }
}
