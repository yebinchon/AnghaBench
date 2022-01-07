
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int pEnv; int pFS; int xLog; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_13__ {scalar_t__ iFirst; } ;
typedef TYPE_2__ Segment ;
typedef int Page ;


 int INFO_PAGE_DUMP_VALUES ;
 int LSM_OK ;
 int assert (int ) ;
 int infoPageDump (TYPE_1__*,int ,int,char**) ;
 int lsmFree (int ,char*) ;
 int lsmFsDbPageGet (int ,TYPE_2__*,scalar_t__,int **) ;
 int lsmFsDbPageNext (TYPE_2__*,int *,int,int **) ;
 int lsmFsPageNumber (int *) ;
 int lsmFsPageRelease (int *) ;
 int lsmLogMessage (TYPE_1__*,int ,char*,char*) ;
 char* segToString (int ,TYPE_2__*,int ) ;
 int sortedDumpPage (TYPE_1__*,TYPE_2__*,int *,int) ;

void sortedDumpSegment(lsm_db *pDb, Segment *pRun, int bVals){
  assert( pDb->xLog );
  if( pRun && pRun->iFirst ){
    int flags = (bVals ? INFO_PAGE_DUMP_VALUES : 0);
    char *zSeg;
    Page *pPg;

    zSeg = segToString(pDb->pEnv, pRun, 0);
    lsmLogMessage(pDb, LSM_OK, "Segment: %s", zSeg);
    lsmFree(pDb->pEnv, zSeg);

    lsmFsDbPageGet(pDb->pFS, pRun, pRun->iFirst, &pPg);
    while( pPg ){
      Page *pNext;
      char *z = 0;
      infoPageDump(pDb, lsmFsPageNumber(pPg), flags, &z);
      lsmLogMessage(pDb, LSM_OK, "%s", z);
      lsmFree(pDb->pEnv, z);



      lsmFsDbPageNext(pRun, pPg, 1, &pNext);
      lsmFsPageRelease(pPg);
      pPg = pNext;
    }
  }
}
