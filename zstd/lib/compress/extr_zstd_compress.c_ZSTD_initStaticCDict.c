
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_dictLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
typedef int ZSTD_cwksp ;
typedef int ZSTD_compressionParameters ;
struct TYPE_4__ {int workspace; } ;
typedef TYPE_1__ const ZSTD_CDict ;


 int DEBUGLOG (int,char*,unsigned int,unsigned int,unsigned int) ;
 int HUF_WORKSPACE_SIZE ;
 int ZSTD_cwksp_align (size_t,int) ;
 size_t const ZSTD_cwksp_alloc_size (int) ;
 int ZSTD_cwksp_init (int *,void*,size_t) ;
 int ZSTD_cwksp_move (int *,int *) ;
 scalar_t__ ZSTD_cwksp_reserve_object (int *,int) ;
 int ZSTD_dlm_byRef ;
 int ZSTD_initCDict_internal (TYPE_1__ const*,void const*,size_t,int ,int ,int ) ;
 scalar_t__ ZSTD_isError (int ) ;
 size_t ZSTD_sizeof_matchState (int *,int ) ;

const ZSTD_CDict* ZSTD_initStaticCDict(
                                 void* workspace, size_t workspaceSize,
                           const void* dict, size_t dictSize,
                                 ZSTD_dictLoadMethod_e dictLoadMethod,
                                 ZSTD_dictContentType_e dictContentType,
                                 ZSTD_compressionParameters cParams)
{
    size_t const matchStateSize = ZSTD_sizeof_matchState(&cParams, 0);
    size_t const neededSize = ZSTD_cwksp_alloc_size(sizeof(ZSTD_CDict))
                            + (dictLoadMethod == ZSTD_dlm_byRef ? 0
                               : ZSTD_cwksp_alloc_size(ZSTD_cwksp_align(dictSize, sizeof(void*))))
                            + ZSTD_cwksp_alloc_size(HUF_WORKSPACE_SIZE)
                            + matchStateSize;
    ZSTD_CDict* cdict;

    if ((size_t)workspace & 7) return ((void*)0);

    {
        ZSTD_cwksp ws;
        ZSTD_cwksp_init(&ws, workspace, workspaceSize);
        cdict = (ZSTD_CDict*)ZSTD_cwksp_reserve_object(&ws, sizeof(ZSTD_CDict));
        if (cdict == ((void*)0)) return ((void*)0);
        ZSTD_cwksp_move(&cdict->workspace, &ws);
    }

    DEBUGLOG(4, "(workspaceSize < neededSize) : (%u < %u) => %u",
        (unsigned)workspaceSize, (unsigned)neededSize, (unsigned)(workspaceSize < neededSize));
    if (workspaceSize < neededSize) return ((void*)0);

    if (ZSTD_isError( ZSTD_initCDict_internal(cdict,
                                              dict, dictSize,
                                              dictLoadMethod, dictContentType,
                                              cParams) ))
        return ((void*)0);

    return cdict;
}
