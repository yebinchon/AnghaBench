
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int pes; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int block_t ;


 int DecodeBlock ;
 int ParsePESEncap (TYPE_1__*,int *,int ,int *) ;

__attribute__((used)) static int DecodePESBlock( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    return ParsePESEncap( p_dec, &p_sys->pes, DecodeBlock, p_block );
}
