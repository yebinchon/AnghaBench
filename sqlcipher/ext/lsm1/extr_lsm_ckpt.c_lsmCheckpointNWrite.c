
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 size_t CKPT_HDR_NWRITE ;
 int lsmGetU32 (int *) ;

u32 lsmCheckpointNWrite(u32 *aCkpt, int bDisk){
  if( bDisk ){
    return lsmGetU32((u8 *)&aCkpt[CKPT_HDR_NWRITE]);
  }else{
    return aCkpt[CKPT_HDR_NWRITE];
  }
}
