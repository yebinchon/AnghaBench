
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t BLOCKSIZE ;
 size_t ZBUFFv05_blockHeaderSize ;

size_t ZBUFFv05_recommendedDInSize(void) { return BLOCKSIZE + ZBUFFv05_blockHeaderSize ; }
