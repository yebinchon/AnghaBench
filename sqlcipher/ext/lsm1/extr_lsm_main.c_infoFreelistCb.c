
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {scalar_t__ n; } ;
typedef TYPE_1__ LsmString ;


 int lsmStringAppendf (TYPE_1__*,char*,char*,int,int ) ;

__attribute__((used)) static int infoFreelistCb(void *pCtx, int iBlk, i64 iSnapshot){
  LsmString *pStr = (LsmString *)pCtx;
  lsmStringAppendf(pStr, "%s{%d %lld}", (pStr->n?" ":""), iBlk, iSnapshot);
  return 0;
}
