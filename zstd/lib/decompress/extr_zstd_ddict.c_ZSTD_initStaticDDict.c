
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ZSTD_dictLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
typedef int const ZSTD_DDict ;


 scalar_t__ ZSTD_dlm_byCopy ;
 scalar_t__ ZSTD_dlm_byRef ;
 int ZSTD_initDDict_internal (int const* const,void const*,size_t,scalar_t__,int ) ;
 scalar_t__ ZSTD_isError (int ) ;
 int assert (int ) ;
 int memcpy (int const* const,void const*,size_t) ;

const ZSTD_DDict* ZSTD_initStaticDDict(
                                void* sBuffer, size_t sBufferSize,
                                const void* dict, size_t dictSize,
                                ZSTD_dictLoadMethod_e dictLoadMethod,
                                ZSTD_dictContentType_e dictContentType)
{
    size_t const neededSpace = sizeof(ZSTD_DDict)
                             + (dictLoadMethod == ZSTD_dlm_byRef ? 0 : dictSize);
    ZSTD_DDict* const ddict = (ZSTD_DDict*)sBuffer;
    assert(sBuffer != ((void*)0));
    assert(dict != ((void*)0));
    if ((size_t)sBuffer & 7) return ((void*)0);
    if (sBufferSize < neededSpace) return ((void*)0);
    if (dictLoadMethod == ZSTD_dlm_byCopy) {
        memcpy(ddict+1, dict, dictSize);
        dict = ddict+1;
    }
    if (ZSTD_isError( ZSTD_initDDict_internal(ddict,
                                              dict, dictSize,
                                              ZSTD_dlm_byRef, dictContentType) ))
        return ((void*)0);
    return ddict;
}
