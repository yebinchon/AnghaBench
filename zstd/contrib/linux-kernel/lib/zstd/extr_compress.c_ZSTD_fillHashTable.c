
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hashLog; } ;
struct TYPE_6__ {TYPE_1__ cParams; } ;
struct TYPE_7__ {int nextToUpdate; int * base; TYPE_2__ params; scalar_t__* hashTable; } ;
typedef TYPE_3__ ZSTD_CCtx ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 int const* HASH_READ_SIZE ;
 size_t ZSTD_hashPtr (int const*,scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static void ZSTD_fillHashTable(ZSTD_CCtx *zc, const void *end, const U32 mls)
{
 U32 *const hashTable = zc->hashTable;
 U32 const hBits = zc->params.cParams.hashLog;
 const BYTE *const base = zc->base;
 const BYTE *ip = base + zc->nextToUpdate;
 const BYTE *const iend = ((const BYTE *)end) - HASH_READ_SIZE;
 const size_t fastHashFillStep = 3;

 while (ip <= iend) {
  hashTable[ZSTD_hashPtr(ip, hBits, mls)] = (U32)(ip - base);
  ip += fastHashFillStep;
 }
}
