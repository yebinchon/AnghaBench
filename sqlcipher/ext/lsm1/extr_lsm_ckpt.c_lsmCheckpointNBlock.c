
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t CKPT_HDR_NBLOCK ;

u32 lsmCheckpointNBlock(u32 *aCkpt){
  return aCkpt[CKPT_HDR_NBLOCK];
}
