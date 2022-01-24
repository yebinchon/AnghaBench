#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_8__ {int nCol; TYPE_1__* aCol; TYPE_4__* pIndex; } ;
typedef  TYPE_2__ Table ;
struct TYPE_10__ {int nKeyCol; int* aiColumn; char** azColl; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {int /*<<< orphan*/ * db; TYPE_2__* pNewTable; } ;
struct TYPE_7__ {char* zColl; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(Parse *pParse, Token *pToken){
  Table *p;
  int i;
  char *zColl;              /* Dequoted name of collation sequence */
  sqlite3 *db;

  if( (p = pParse->pNewTable)==0 ) return;
  i = p->nCol-1;
  db = pParse->db;
  zColl = FUNC3(db, pToken);
  if( !zColl ) return;

  if( FUNC2(pParse, zColl) ){
    Index *pIdx;
    FUNC1(db, p->aCol[i].zColl);
    p->aCol[i].zColl = zColl;
  
    /* If the column is declared as "<name> PRIMARY KEY COLLATE <type>",
    ** then an index may have been created on this column before the
    ** collation type was added. Correct this if it is the case.
    */
    for(pIdx=p->pIndex; pIdx; pIdx=pIdx->pNext){
      FUNC0( pIdx->nKeyCol==1 );
      if( pIdx->aiColumn[0]==i ){
        pIdx->azColl[0] = p->aCol[i].zColl;
      }
    }
  }else{
    FUNC1(db, zColl);
  }
}