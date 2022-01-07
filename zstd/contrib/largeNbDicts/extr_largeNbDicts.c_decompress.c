
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ddicts; } ;
struct TYPE_4__ {size_t dictNb; int nbDicts; TYPE_1__ dictionaries; int dctx; } ;
typedef TYPE_2__ decompressInstructions ;


 size_t ZSTD_decompress_usingDDict (int ,void*,size_t,void const*,size_t,int ) ;

size_t decompress(const void* src, size_t srcSize, void* dst, size_t dstCapacity, void* payload)
{
    decompressInstructions* const di = (decompressInstructions*) payload;

    size_t const result = ZSTD_decompress_usingDDict(di->dctx,
                                        dst, dstCapacity,
                                        src, srcSize,
                                        di->dictionaries.ddicts[di->dictNb]);

    di->dictNb = di->dictNb + 1;
    if (di->dictNb >= di->nbDicts) di->dictNb = 0;

    return result;
}
