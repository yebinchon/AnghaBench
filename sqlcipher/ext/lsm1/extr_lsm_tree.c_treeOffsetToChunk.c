
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LSM_SHM_CHUNK_SIZE ;
 int assert (int) ;

__attribute__((used)) static int treeOffsetToChunk(u32 iOff){
  assert( LSM_SHM_CHUNK_SIZE==(1<<15) );
  return (int)(iOff>>15);
}
