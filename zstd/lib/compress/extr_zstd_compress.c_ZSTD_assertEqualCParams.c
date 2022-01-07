
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ windowLog; scalar_t__ chainLog; scalar_t__ hashLog; scalar_t__ searchLog; scalar_t__ minMatch; scalar_t__ targetLength; scalar_t__ strategy; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;


 int assert (int) ;

__attribute__((used)) static void ZSTD_assertEqualCParams(ZSTD_compressionParameters cParams1,
                                    ZSTD_compressionParameters cParams2)
{
    (void)cParams1;
    (void)cParams2;
    assert(cParams1.windowLog == cParams2.windowLog);
    assert(cParams1.chainLog == cParams2.chainLog);
    assert(cParams1.hashLog == cParams2.hashLog);
    assert(cParams1.searchLog == cParams2.searchLog);
    assert(cParams1.minMatch == cParams2.minMatch);
    assert(cParams1.targetLength == cParams2.targetLength);
    assert(cParams1.strategy == cParams2.strategy);
}
