
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTDv06_BLOCKSIZE_MAX ;

size_t ZBUFFv06_recommendedDOutSize(void) { return ZSTDv06_BLOCKSIZE_MAX; }
