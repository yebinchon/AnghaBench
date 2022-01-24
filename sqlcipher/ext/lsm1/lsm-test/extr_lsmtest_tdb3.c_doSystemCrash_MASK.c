#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int lsm_i64 ;
typedef  int /*<<< orphan*/  lsm_file ;
struct TYPE_10__ {int /*<<< orphan*/  (* xClose ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* xWrite ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  (* xOpen ) (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;} ;
typedef  TYPE_3__ lsm_env ;
struct TYPE_11__ {char* zName; int szSector; TYPE_2__* aFile; } ;
struct TYPE_9__ {int nSector; TYPE_1__* aSector; } ;
struct TYPE_8__ {int /*<<< orphan*/ * aOld; } ;
typedef  TYPE_4__ LsmDb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(LsmDb *pDb){
  lsm_env *pEnv = FUNC5();
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
        int iOpt = FUNC8(iSeed++) % 3;
        switch( iOpt ){
          case 0:
            break;

          case 1:
            FUNC7(iSeed++, (u32 *)aOld, pDb->szSector/4);
            /* Fall-through */

          case 2:
            pEnv->xWrite(
                pFile, (lsm_i64)i * pDb->szSector, aOld, pDb->szSector
            );
            break;
        }
        FUNC6(aOld);
        pDb->aFile[iFile].aSector[i].aOld = 0;
      }
    }
    pEnv->xClose(pFile);
    zFree = zFile = FUNC1("%s-log", pDb->zName);
  }

  FUNC0(zFree);
}