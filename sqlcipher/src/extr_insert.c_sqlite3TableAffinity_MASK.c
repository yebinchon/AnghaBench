#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_5__ {char* zColAff; int nCol; TYPE_1__* aCol; } ;
typedef  TYPE_2__ Table ;
struct TYPE_4__ {char affinity; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Affinity ; 
 char SQLITE_AFF_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(Vdbe *v, Table *pTab, int iReg){
  int i;
  char *zColAff = pTab->zColAff;
  if( zColAff==0 ){
    sqlite3 *db = FUNC6(v);
    zColAff = (char *)FUNC1(0, pTab->nCol+1);
    if( !zColAff ){
      FUNC2(db);
      return;
    }

    for(i=0; i<pTab->nCol; i++){
      zColAff[i] = pTab->aCol[i].affinity;
    }
    do{
      zColAff[i--] = 0;
    }while( i>=0 && zColAff[i]==SQLITE_AFF_BLOB );
    pTab->zColAff = zColAff;
  }
  FUNC0( zColAff!=0 );
  i = FUNC3(zColAff);
  if( i ){
    if( iReg ){
      FUNC4(v, OP_Affinity, iReg, i, 0, zColAff, i);
    }else{
      FUNC5(v, -1, zColAff, i);
    }
  }
}