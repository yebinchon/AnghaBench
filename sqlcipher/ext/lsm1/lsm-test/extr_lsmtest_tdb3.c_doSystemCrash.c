
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int lsm_i64 ;
typedef int lsm_file ;
struct TYPE_10__ {int (* xClose ) (int *) ;int (* xWrite ) (int *,int,int *,int) ;int (* xOpen ) (TYPE_3__*,char*,int ,int **) ;} ;
typedef TYPE_3__ lsm_env ;
struct TYPE_11__ {char* zName; int szSector; TYPE_2__* aFile; } ;
struct TYPE_9__ {int nSector; TYPE_1__* aSector; } ;
struct TYPE_8__ {int * aOld; } ;
typedef TYPE_4__ LsmDb ;


 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char*) ;
 int stub1 (TYPE_3__*,char*,int ,int **) ;
 int stub2 (int *,int,int *,int) ;
 int stub3 (int *) ;
 TYPE_3__* tdb_lsm_env () ;
 int testFree (int *) ;
 int testPrngArray (int ,int *,int) ;
 int testPrngValue (int ) ;

__attribute__((used)) static void doSystemCrash(LsmDb *pDb){
  lsm_env *pEnv = tdb_lsm_env();
  int iFile;
  int iSeed = pDb->aFile[0].nSector + pDb->aFile[1].nSector;

  char *zFile = pDb->zName;
  char *zFree = 0;

  for(iFile=0; iFile<2; iFile++){
    lsm_file *pFile = 0;
    int i;

    pEnv->xOpen(pEnv, zFile, 0, &pFile);
    for(i=0; i<pDb->aFile[iFile].nSector; i++){
      u8 *aOld = pDb->aFile[iFile].aSector[i].aOld;
      if( aOld ){
        int iOpt = testPrngValue(iSeed++) % 3;
        switch( iOpt ){
          case 0:
            break;

          case 1:
            testPrngArray(iSeed++, (u32 *)aOld, pDb->szSector/4);


          case 2:
            pEnv->xWrite(
                pFile, (lsm_i64)i * pDb->szSector, aOld, pDb->szSector
            );
            break;
        }
        testFree(aOld);
        pDb->aFile[iFile].aSector[i].aOld = 0;
      }
    }
    pEnv->xClose(pFile);
    zFree = zFile = sqlite3_mprintf("%s-log", pDb->zName);
  }

  sqlite3_free(zFree);
}
