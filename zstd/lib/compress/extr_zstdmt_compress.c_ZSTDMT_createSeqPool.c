
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_customMem ;
typedef int ZSTDMT_seqPool ;


 int * ZSTDMT_createBufferPool (unsigned int,int ) ;
 int ZSTDMT_setNbSeq (int * const,int ) ;

__attribute__((used)) static ZSTDMT_seqPool* ZSTDMT_createSeqPool(unsigned nbWorkers, ZSTD_customMem cMem)
{
    ZSTDMT_seqPool* const seqPool = ZSTDMT_createBufferPool(nbWorkers, cMem);
    if (seqPool == ((void*)0)) return ((void*)0);
    ZSTDMT_setNbSeq(seqPool, 0);
    return seqPool;
}
