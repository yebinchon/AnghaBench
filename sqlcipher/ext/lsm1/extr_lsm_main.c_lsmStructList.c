
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_14__ {int nRight; int * aRhs; int lhs; scalar_t__ iAge; struct TYPE_14__* pNext; } ;
struct TYPE_13__ {scalar_t__ n; char* z; } ;
typedef int Snapshot ;
typedef TYPE_2__ LsmString ;
typedef TYPE_3__ Level ;


 int LSM_NOMEM ;
 int LSM_OK ;
 int infoFreeWorker (TYPE_1__*,int) ;
 int infoGetWorker (TYPE_1__*,int **,int*) ;
 int lsmAppendSegmentList (TYPE_2__*,char*,int *) ;
 TYPE_3__* lsmDbSnapshotLevel (int *) ;
 int lsmStringAppend (TYPE_2__*,char*,int) ;
 int lsmStringAppendf (TYPE_2__*,char*,char*,int) ;
 int lsmStringInit (TYPE_2__*,int ) ;

int lsmStructList(
  lsm_db *pDb,
  char **pzOut
){
  Level *pTopLevel = 0;
  int rc = LSM_OK;
  Level *p;
  LsmString s;
  Snapshot *pWorker;
  int bUnlock = 0;


  rc = infoGetWorker(pDb, &pWorker, &bUnlock);
  if( rc!=LSM_OK ) return rc;


  pTopLevel = lsmDbSnapshotLevel(pWorker);
  lsmStringInit(&s, pDb->pEnv);
  for(p=pTopLevel; rc==LSM_OK && p; p=p->pNext){
    int i;
    lsmStringAppendf(&s, "%s{%d", (s.n ? " " : ""), (int)p->iAge);
    lsmAppendSegmentList(&s, " ", &p->lhs);
    for(i=0; rc==LSM_OK && i<p->nRight; i++){
      lsmAppendSegmentList(&s, " ", &p->aRhs[i]);
    }
    lsmStringAppend(&s, "}", 1);
  }
  rc = s.n>=0 ? LSM_OK : LSM_NOMEM;


  infoFreeWorker(pDb, bUnlock);
  *pzOut = s.z;
  return rc;
}
