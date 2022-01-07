
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int i_flags; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_TYPE_B ;
 int BLOCK_FLAG_TYPE_I ;
 int BLOCK_FLAG_TYPE_P ;
 int BLOCK_FLAG_TYPE_PB ;
 int MFX_FRAMETYPE_B ;
 int MFX_FRAMETYPE_I ;
 int MFX_FRAMETYPE_IDR ;
 int MFX_FRAMETYPE_P ;

__attribute__((used)) static void qsv_set_block_flags(block_t *block, uint16_t frame_type)
{
    if (frame_type & MFX_FRAMETYPE_IDR)
        block->i_flags = BLOCK_FLAG_TYPE_I;
    else if ((frame_type & MFX_FRAMETYPE_P) || (frame_type & MFX_FRAMETYPE_I))
        block->i_flags = BLOCK_FLAG_TYPE_P;
    else if (frame_type & MFX_FRAMETYPE_B)
        block->i_flags = BLOCK_FLAG_TYPE_B;
    else
        block->i_flags = BLOCK_FLAG_TYPE_PB;
}
