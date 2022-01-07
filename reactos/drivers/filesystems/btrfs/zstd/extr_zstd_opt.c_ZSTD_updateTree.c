
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int searchLength; } ;
struct TYPE_6__ {TYPE_1__ cParams; } ;
typedef TYPE_2__ ZSTD_matchState_t ;
typedef int BYTE ;


 int ZSTD_noDict ;
 int ZSTD_updateTree_internal (TYPE_2__*,int const*,int const*,int ,int ) ;

void ZSTD_updateTree(ZSTD_matchState_t* ms, const BYTE* ip, const BYTE* iend) {
    ZSTD_updateTree_internal(ms, ip, iend, ms->cParams.searchLength, ZSTD_noDict);
}
