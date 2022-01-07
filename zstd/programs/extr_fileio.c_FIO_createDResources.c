
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ress ;
struct TYPE_6__ {int * dctx; void* dstBuffer; void* srcBuffer; int dstBufferSize; int srcBufferSize; } ;
typedef TYPE_1__ dRess_t ;
struct TYPE_7__ {int memLimit; } ;
typedef TYPE_2__ FIO_prefs_t ;


 int CHECK (int ) ;
 int EXM_THROW (int,char*,...) ;
 size_t FIO_createDictBuffer (void**,char const*) ;
 int ZSTD_DCtx_setMaxWindowSize (int *,int ) ;
 int ZSTD_DStreamInSize () ;
 int ZSTD_DStreamOutSize () ;
 int * ZSTD_createDStream () ;
 int ZSTD_initDStream_usingDict (int *,void*,size_t const) ;
 int errno ;
 int free (void*) ;
 void* malloc (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int strerror (int ) ;

__attribute__((used)) static dRess_t FIO_createDResources(FIO_prefs_t* const prefs, const char* dictFileName)
{
    dRess_t ress;
    memset(&ress, 0, sizeof(ress));


    ress.dctx = ZSTD_createDStream();
    if (ress.dctx==((void*)0))
        EXM_THROW(60, "Error: %s : can't create ZSTD_DStream", strerror(errno));
    CHECK( ZSTD_DCtx_setMaxWindowSize(ress.dctx, prefs->memLimit) );
    ress.srcBufferSize = ZSTD_DStreamInSize();
    ress.srcBuffer = malloc(ress.srcBufferSize);
    ress.dstBufferSize = ZSTD_DStreamOutSize();
    ress.dstBuffer = malloc(ress.dstBufferSize);
    if (!ress.srcBuffer || !ress.dstBuffer)
        EXM_THROW(61, "Allocation error : not enough memory");


    { void* dictBuffer;
        size_t const dictBufferSize = FIO_createDictBuffer(&dictBuffer, dictFileName);
        CHECK( ZSTD_initDStream_usingDict(ress.dctx, dictBuffer, dictBufferSize) );
        free(dictBuffer);
    }

    return ress;
}
