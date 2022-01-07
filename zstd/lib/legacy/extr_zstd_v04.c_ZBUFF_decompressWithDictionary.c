
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* dict; size_t dictSize; } ;
typedef TYPE_1__ ZBUFF_DCtx ;



__attribute__((used)) static size_t ZBUFF_decompressWithDictionary(ZBUFF_DCtx* zbc, const void* src, size_t srcSize)
{
    zbc->dict = (const char*)src;
    zbc->dictSize = srcSize;
    return 0;
}
