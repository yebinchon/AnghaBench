
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_8__ {int i_spu_size; int metadata_offset; int metadata_length; int i_image_offset; int i_image_length; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_9__ {int* p_buffer; } ;
typedef TYPE_3__ block_t ;


 int msg_Dbg (TYPE_1__*,char*,int,int) ;

__attribute__((used)) static void ParseHeader( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint8_t *p = p_block->p_buffer;

    p_sys->i_spu_size = (p[0] << 8) + p[1] + 4; p += 2;


    p_sys->metadata_offset = (p[0] << 8) + p[1]; p +=2;
    p_sys->metadata_length = p_sys->i_spu_size - p_sys->metadata_offset;

    p_sys->i_image_offset = 4;
    p_sys->i_image_length = p_sys->metadata_offset - p_sys->i_image_offset;





}
