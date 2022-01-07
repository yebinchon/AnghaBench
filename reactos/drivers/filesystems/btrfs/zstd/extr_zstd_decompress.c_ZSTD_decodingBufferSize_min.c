
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ERROR (int ) ;
 unsigned long long MIN (unsigned long long,unsigned long long const) ;
 int WILDCOPY_OVERLENGTH ;
 unsigned long long const ZSTD_BLOCKSIZE_MAX ;
 int frameParameter_windowTooLarge ;

size_t ZSTD_decodingBufferSize_min(unsigned long long windowSize, unsigned long long frameContentSize)
{
    size_t const blockSize = (size_t) MIN(windowSize, ZSTD_BLOCKSIZE_MAX);
    unsigned long long const neededRBSize = windowSize + blockSize + (WILDCOPY_OVERLENGTH * 2);
    unsigned long long const neededSize = MIN(frameContentSize, neededRBSize);
    size_t const minRBSize = (size_t) neededSize;
    if ((unsigned long long)minRBSize != neededSize) return ERROR(frameParameter_windowTooLarge);
    return minRBSize;
}
