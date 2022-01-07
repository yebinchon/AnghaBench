
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {scalar_t__ i_queue; int * p_queue; int p_cea708; int p_dtvcc; scalar_t__ p_eia608; } ;
typedef TYPE_2__ decoder_sys_t ;


 int CEA708_DTVCC_Demuxer_Flush (int ) ;
 int CEA708_Decoder_Flush (int ) ;
 int Eia608Init (scalar_t__) ;
 int block_ChainRelease (int *) ;

__attribute__((used)) static void Flush( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_sys->p_eia608 )
    {
        Eia608Init( p_sys->p_eia608 );
    }
    else
    {
        CEA708_DTVCC_Demuxer_Flush( p_sys->p_dtvcc );
        CEA708_Decoder_Flush( p_sys->p_cea708 );
    }

    block_ChainRelease( p_sys->p_queue );
    p_sys->p_queue = ((void*)0);
    p_sys->i_queue = 0;
}
