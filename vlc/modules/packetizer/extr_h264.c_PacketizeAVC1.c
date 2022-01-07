
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int i_avcC_length_size; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int block_t ;


 int * PacketizeXXC1 (TYPE_1__*,int ,int **,int ) ;
 int ParseNALBlock ;

__attribute__((used)) static block_t *PacketizeAVC1( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    return PacketizeXXC1( p_dec, p_sys->i_avcC_length_size,
                          pp_block, ParseNALBlock );
}
