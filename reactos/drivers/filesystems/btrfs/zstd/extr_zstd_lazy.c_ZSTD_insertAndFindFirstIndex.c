
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int searchLength; } ;
struct TYPE_6__ {TYPE_2__ cParams; } ;
typedef TYPE_1__ ZSTD_matchState_t ;
typedef TYPE_2__ ZSTD_compressionParameters ;
typedef int U32 ;
typedef int BYTE ;


 int ZSTD_insertAndFindFirstIndex_internal (TYPE_1__*,TYPE_2__ const* const,int const*,int ) ;

U32 ZSTD_insertAndFindFirstIndex(ZSTD_matchState_t* ms, const BYTE* ip) {
    const ZSTD_compressionParameters* const cParams = &ms->cParams;
    return ZSTD_insertAndFindFirstIndex_internal(ms, cParams, ip, ms->cParams.searchLength);
}
