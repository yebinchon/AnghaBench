
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_8__ {int iFirst; } ;
typedef TYPE_2__ Segment ;


 int lsmFree (int ,char*) ;
 int lsmInfoArrayStructure (TYPE_1__*,int,int ,char**) ;
 char* segToString (int ,TYPE_2__*,int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int fileToString(
  lsm_db *pDb,
  char *aBuf,
  int nBuf,
  int nMin,
  Segment *pSeg
){
  int i = 0;
  if( pSeg ){
    char *zSeg;

    zSeg = segToString(pDb->pEnv, pSeg, nMin);
    snprintf(&aBuf[i], nBuf-i, "%s", zSeg);
    i += strlen(&aBuf[i]);
    lsmFree(pDb->pEnv, zSeg);







    aBuf[nBuf] = 0;
  }else{
    aBuf[0] = '\0';
  }

  return i;
}
