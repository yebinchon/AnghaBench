
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int strategy; } ;
struct TYPE_7__ {TYPE_1__ cParams; } ;
typedef TYPE_2__ ZSTD_matchState_t ;
typedef int BYTE ;






 int ZSTD_dtlm_fast ;

 int ZSTD_fillDoubleHashTable (TYPE_2__*,int const* const,int ) ;
 int ZSTD_fillHashTable (TYPE_2__*,int const* const,int ) ;



 int assert (int ) ;

__attribute__((used)) static size_t ZSTD_ldm_fillFastTables(ZSTD_matchState_t* ms,
                                      void const* end)
{
    const BYTE* const iend = (const BYTE*)end;

    switch(ms->cParams.strategy)
    {
    case 131:
        ZSTD_fillHashTable(ms, iend, ZSTD_dtlm_fast);
        break;

    case 132:
        ZSTD_fillDoubleHashTable(ms, iend, ZSTD_dtlm_fast);
        break;

    case 130:
    case 129:
    case 128:
    case 135:
    case 134:
    case 133:
        break;
    default:
        assert(0);
    }

    return 0;
}
