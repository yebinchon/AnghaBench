
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {void* litlength_repeatMode; void* matchlength_repeatMode; void* offcode_repeatMode; } ;
struct TYPE_6__ {int repeatMode; } ;
struct TYPE_7__ {TYPE_3__ fse; TYPE_1__ huf; } ;
struct TYPE_9__ {TYPE_2__ entropy; int * rep; } ;
typedef TYPE_4__ ZSTD_compressedBlockState_t ;


 void* FSE_repeat_none ;
 int HUF_repeat_none ;
 int ZSTD_REP_NUM ;
 int * repStartValue ;

__attribute__((used)) static void ZSTD_reset_compressedBlockState(ZSTD_compressedBlockState_t* bs)
{
    int i;
    for (i = 0; i < ZSTD_REP_NUM; ++i)
        bs->rep[i] = repStartValue[i];
    bs->entropy.huf.repeatMode = HUF_repeat_none;
    bs->entropy.fse.offcode_repeatMode = FSE_repeat_none;
    bs->entropy.fse.matchlength_repeatMode = FSE_repeat_none;
    bs->entropy.fse.litlength_repeatMode = FSE_repeat_none;
}
