
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAYLEVEL (int,char*,unsigned int) ;
 size_t g_blockSize ;

void BMK_SetBlockSize(size_t blockSize)
{
    g_blockSize = blockSize;
    DISPLAYLEVEL(2, "using blocks of size %u KB \n", (unsigned)(blockSize>>10));
}
