
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTDv06_BLOCKSIZE_MAX ;
 size_t ZSTDv06_blockHeaderSize ;

size_t ZBUFFv06_recommendedDInSize(void) { return ZSTDv06_BLOCKSIZE_MAX + ZSTDv06_blockHeaderSize ; }
