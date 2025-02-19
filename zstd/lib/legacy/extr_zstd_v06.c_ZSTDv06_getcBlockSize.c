
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ blockType_t ;
struct TYPE_3__ {scalar_t__ blockType; size_t origSize; } ;
typedef TYPE_1__ blockProperties_t ;
typedef size_t U32 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t ZSTDv06_blockHeaderSize ;
 scalar_t__ bt_end ;
 scalar_t__ bt_rle ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv06_getcBlockSize(const void* src, size_t srcSize, blockProperties_t* bpPtr)
{
    const BYTE* const in = (const BYTE* const)src;
    U32 cSize;

    if (srcSize < ZSTDv06_blockHeaderSize) return ERROR(srcSize_wrong);

    bpPtr->blockType = (blockType_t)((*in) >> 6);
    cSize = in[2] + (in[1]<<8) + ((in[0] & 7)<<16);
    bpPtr->origSize = (bpPtr->blockType == bt_rle) ? cSize : 0;

    if (bpPtr->blockType == bt_end) return 0;
    if (bpPtr->blockType == bt_rle) return 1;
    return cSize;
}
