
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zRight ;
typedef int zLevel ;
typedef int zLeft ;
struct TYPE_10__ {int pEnv; scalar_t__ xLog; } ;
typedef TYPE_1__ lsm_db ;
typedef int aRight ;
struct TYPE_11__ {int nRight; int * aRhs; int lhs; struct TYPE_11__* pNext; scalar_t__ flags; scalar_t__ iAge; } ;
typedef int Snapshot ;
typedef int Segment ;
typedef TYPE_2__ Level ;


 int LSM_OK ;
 int assert (int *) ;
 int fileToString (TYPE_1__*,char*,int,int,int *) ;
 TYPE_2__* lsmDbSnapshotLevel (int *) ;
 int lsmFree (int ,char*) ;
 int * lsmFsIntegrityCheck (TYPE_1__*) ;
 int lsmInfoFreelist (TYPE_1__*,char**) ;
 int lsmLogMessage (TYPE_1__*,int ,char*,...) ;
 int memmove (int **,int **,int) ;
 int snprintf (char*,int,char*,int,int,int) ;
 int sortedDumpSegment (TYPE_1__*,int *,int) ;

void lsmSortedDumpStructure(
  lsm_db *pDb,
  Snapshot *pSnap,
  int bKeys,
  int bVals,
  const char *zWhy
){
  Snapshot *pDump = pSnap;
  Level *pTopLevel;
  char *zFree = 0;

  assert( pSnap );
  pTopLevel = lsmDbSnapshotLevel(pDump);
  if( pDb->xLog && pTopLevel ){
    static int nCall = 0;
    Level *pLevel;
    int iLevel = 0;

    nCall++;
    lsmLogMessage(pDb, LSM_OK, "Database structure %d (%s)", nCall, zWhy);





    for(pLevel=pTopLevel; pLevel; pLevel=pLevel->pNext){
      char zLeft[1024];
      char zRight[1024];
      int i = 0;

      Segment *aLeft[24];
      Segment *aRight[24];

      int nLeft = 0;
      int nRight = 0;

      Segment *pSeg = &pLevel->lhs;
      aLeft[nLeft++] = pSeg;

      for(i=0; i<pLevel->nRight; i++){
        aRight[nRight++] = &pLevel->aRhs[i];
      }
      for(i=0; i<nLeft || i<nRight; i++){
        int iPad = 0;
        char zLevel[32];
        zLeft[0] = '\0';
        zRight[0] = '\0';

        if( i<nLeft ){
          fileToString(pDb, zLeft, sizeof(zLeft), 24, aLeft[i]);
        }
        if( i<nRight ){
          fileToString(pDb, zRight, sizeof(zRight), 24, aRight[i]);
        }

        if( i==0 ){
          snprintf(zLevel, sizeof(zLevel), "L%d: (age=%d) (flags=%.4x)",
              iLevel, (int)pLevel->iAge, (int)pLevel->flags
          );
        }else{
          zLevel[0] = '\0';
        }

        if( nRight==0 ){
          iPad = 10;
        }

        lsmLogMessage(pDb, LSM_OK, "% 25s % *s% -35s %s",
            zLevel, iPad, "", zLeft, zRight
        );
      }

      iLevel++;
    }

    if( bKeys ){
      for(pLevel=pTopLevel; pLevel; pLevel=pLevel->pNext){
        int i;
        sortedDumpSegment(pDb, &pLevel->lhs, bVals);
        for(i=0; i<pLevel->nRight; i++){
          sortedDumpSegment(pDb, &pLevel->aRhs[i], bVals);
        }
      }
    }
  }

  lsmInfoFreelist(pDb, &zFree);
  lsmLogMessage(pDb, LSM_OK, "Freelist: %s", zFree);
  lsmFree(pDb->pEnv, zFree);

  assert( lsmFsIntegrityCheck(pDb) );
}
