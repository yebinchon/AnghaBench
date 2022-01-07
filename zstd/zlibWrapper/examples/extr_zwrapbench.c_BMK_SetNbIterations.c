
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAYLEVEL (int,char*,unsigned int) ;
 unsigned int g_nbIterations ;

void BMK_SetNbIterations(unsigned nbLoops)
{
    g_nbIterations = nbLoops;
    DISPLAYLEVEL(3, "- test >= %u seconds per compression / decompression -\n", g_nbIterations);
}
