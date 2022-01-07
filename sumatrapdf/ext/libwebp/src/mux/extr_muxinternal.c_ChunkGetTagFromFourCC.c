
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MKFOURCC (char const,char const,char const,char const) ;

uint32_t ChunkGetTagFromFourCC(const char fourcc[4]) {
  return MKFOURCC(fourcc[0], fourcc[1], fourcc[2], fourcc[3]);
}
