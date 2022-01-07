
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tableLog; } ;
typedef TYPE_1__ ZSTD_seqSymbol_header ;
struct TYPE_5__ {int nbAdditionalBits; } ;
typedef TYPE_2__ ZSTD_seqSymbol ;
typedef int U32 ;


 int DEBUGLOG (int,char*,int const) ;
 int OffFSELog ;
 int assert (int) ;

__attribute__((used)) static unsigned
ZSTD_getLongOffsetsShare(const ZSTD_seqSymbol* offTable)
{
    const void* ptr = offTable;
    U32 const tableLog = ((const ZSTD_seqSymbol_header*)ptr)[0].tableLog;
    const ZSTD_seqSymbol* table = offTable + 1;
    U32 const max = 1 << tableLog;
    U32 u, total = 0;
    DEBUGLOG(5, "ZSTD_getLongOffsetsShare: (tableLog=%u)", tableLog);

    assert(max <= (1 << OffFSELog));
    for (u=0; u<max; u++) {
        if (table[u].nbAdditionalBits > 22) total += 1;
    }

    assert(tableLog <= OffFSELog);
    total <<= (OffFSELog - tableLog);

    return total;
}
