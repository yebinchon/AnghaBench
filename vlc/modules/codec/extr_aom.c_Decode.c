
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int decoder_t ;
struct TYPE_5__ {int i_flags; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int OutputFrame ;
 int PopFrames (int *,int ) ;
 int PushFrame (int *,TYPE_1__*) ;
 int VLCDEC_SUCCESS ;
 int block_Release (TYPE_1__*) ;

__attribute__((used)) static int Decode(decoder_t *dec, block_t *block)
{
    if (block && block->i_flags & (BLOCK_FLAG_CORRUPTED))
    {
        block_Release(block);
        return VLCDEC_SUCCESS;
    }

    int i_ret = PushFrame(dec, block);

    PopFrames(dec, OutputFrame);

    return i_ret;
}
