
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFFv04_DCtx ;


 size_t ZBUFF_freeDCtx (int *) ;

size_t ZBUFFv04_freeDCtx(ZBUFFv04_DCtx* dctx) { return ZBUFF_freeDCtx(dctx); }
