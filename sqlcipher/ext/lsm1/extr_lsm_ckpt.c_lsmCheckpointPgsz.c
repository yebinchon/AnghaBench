
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 size_t CKPT_HDR_PGSZ ;

int lsmCheckpointPgsz(u32 *aCkpt){ return (int)aCkpt[CKPT_HDR_PGSZ]; }
