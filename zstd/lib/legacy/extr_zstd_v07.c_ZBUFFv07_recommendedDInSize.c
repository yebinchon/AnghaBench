
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTDv07_BLOCKSIZE_ABSOLUTEMAX ;
 size_t ZSTDv07_blockHeaderSize ;

size_t ZBUFFv07_recommendedDInSize(void) { return ZSTDv07_BLOCKSIZE_ABSOLUTEMAX + ZSTDv07_blockHeaderSize ; }
