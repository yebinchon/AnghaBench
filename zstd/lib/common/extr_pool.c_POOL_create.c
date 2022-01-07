
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POOL_ctx ;


 int * POOL_create_advanced (size_t,size_t,int ) ;
 int ZSTD_defaultCMem ;

POOL_ctx* POOL_create(size_t numThreads, size_t queueSize) {
    return POOL_create_advanced(numThreads, queueSize, ZSTD_defaultCMem);
}
