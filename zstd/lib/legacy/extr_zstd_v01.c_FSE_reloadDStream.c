
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int bitsConsumed; scalar_t__ ptr; scalar_t__ start; void* bitContainer; } ;
typedef TYPE_1__ FSE_DStream_t ;


 int FSE_DStream_completed ;
 int FSE_DStream_endOfBuffer ;
 int FSE_DStream_tooFar ;
 int FSE_DStream_unfinished ;
 void* FSE_readLEST (scalar_t__) ;

__attribute__((used)) static unsigned FSE_reloadDStream(FSE_DStream_t* bitD)
{
    if (bitD->bitsConsumed > (sizeof(bitD->bitContainer)*8))
        return FSE_DStream_tooFar;

    if (bitD->ptr >= bitD->start + sizeof(bitD->bitContainer))
    {
        bitD->ptr -= bitD->bitsConsumed >> 3;
        bitD->bitsConsumed &= 7;
        bitD->bitContainer = FSE_readLEST(bitD->ptr);
        return FSE_DStream_unfinished;
    }
    if (bitD->ptr == bitD->start)
    {
        if (bitD->bitsConsumed < sizeof(bitD->bitContainer)*8) return FSE_DStream_endOfBuffer;
        return FSE_DStream_completed;
    }
    {
        U32 nbBytes = bitD->bitsConsumed >> 3;
        U32 result = FSE_DStream_unfinished;
        if (bitD->ptr - nbBytes < bitD->start)
        {
            nbBytes = (U32)(bitD->ptr - bitD->start);
            result = FSE_DStream_endOfBuffer;
        }
        bitD->ptr -= nbBytes;
        bitD->bitsConsumed -= nbBytes*8;
        bitD->bitContainer = FSE_readLEST(bitD->ptr);
        return result;
    }
}
