
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fastMode; scalar_t__ tableLog; } ;
typedef TYPE_1__ ZSTD_seqSymbol_header ;
struct TYPE_5__ {int baseValue; scalar_t__ nbAdditionalBits; scalar_t__ nextState; scalar_t__ nbBits; } ;
typedef TYPE_2__ ZSTD_seqSymbol ;
typedef int U32 ;
typedef scalar_t__ BYTE ;


 int assert (int) ;

__attribute__((used)) static void ZSTD_buildSeqTable_rle(ZSTD_seqSymbol* dt, U32 baseValue, U32 nbAddBits)
{
    void* ptr = dt;
    ZSTD_seqSymbol_header* const DTableH = (ZSTD_seqSymbol_header*)ptr;
    ZSTD_seqSymbol* const cell = dt + 1;

    DTableH->tableLog = 0;
    DTableH->fastMode = 0;

    cell->nbBits = 0;
    cell->nextState = 0;
    assert(nbAddBits < 255);
    cell->nbAdditionalBits = (BYTE)nbAddBits;
    cell->baseValue = baseValue;
}
