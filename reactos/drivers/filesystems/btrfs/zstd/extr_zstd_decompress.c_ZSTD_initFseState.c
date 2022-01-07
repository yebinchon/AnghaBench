
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tableLog; } ;
typedef TYPE_1__ ZSTD_seqSymbol_header ;
typedef int ZSTD_seqSymbol ;
struct TYPE_5__ {int const* table; scalar_t__ state; } ;
typedef TYPE_2__ ZSTD_fseState ;
typedef int U32 ;
typedef int BIT_DStream_t ;


 scalar_t__ BIT_readBits (int *,int ) ;
 int BIT_reloadDStream (int *) ;
 int DEBUGLOG (int,char*,int ,int ) ;

__attribute__((used)) static void
ZSTD_initFseState(ZSTD_fseState* DStatePtr, BIT_DStream_t* bitD, const ZSTD_seqSymbol* dt)
{
    const void* ptr = dt;
    const ZSTD_seqSymbol_header* const DTableH = (const ZSTD_seqSymbol_header*)ptr;
    DStatePtr->state = BIT_readBits(bitD, DTableH->tableLog);
    DEBUGLOG(6, "ZSTD_initFseState : val=%u using %u bits",
                (U32)DStatePtr->state, DTableH->tableLog);
    BIT_reloadDStream(bitD);
    DStatePtr->table = dt + 1;
}
