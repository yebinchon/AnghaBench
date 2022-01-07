
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_3__ {int nSize; scalar_t__ iLastPg; scalar_t__ iFirst; scalar_t__ iRoot; } ;
typedef TYPE_1__ Segment ;
typedef scalar_t__ LsmPgno ;


 int LSM_MAX (int ,int) ;
 int lsmFree (int *,char*) ;
 char* lsmMallocPrintf (int *,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static char *segToString(lsm_env *pEnv, Segment *pSeg, int nMin){
  int nSize = pSeg->nSize;
  LsmPgno iRoot = pSeg->iRoot;
  LsmPgno iFirst = pSeg->iFirst;
  LsmPgno iLast = pSeg->iLastPg;
  char *z;

  char *z1;
  char *z2;
  int nPad;

  z1 = lsmMallocPrintf(pEnv, "%d.%d", iFirst, iLast);
  if( iRoot ){
    z2 = lsmMallocPrintf(pEnv, "root=%d", iRoot);
  }else{
    z2 = lsmMallocPrintf(pEnv, "size=%d", nSize);
  }

  nPad = nMin - 2 - strlen(z1) - 1 - strlen(z2);
  nPad = LSM_MAX(0, nPad);

  if( iRoot ){
    z = lsmMallocPrintf(pEnv, "/%s %*s%s\\", z1, nPad, "", z2);
  }else{
    z = lsmMallocPrintf(pEnv, "|%s %*s%s|", z1, nPad, "", z2);
  }
  lsmFree(pEnv, z1);
  lsmFree(pEnv, z2);

  return z;
}
