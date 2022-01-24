#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int nDb; scalar_t__ nSqlExec; TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_29__ {scalar_t__ n; } ;
typedef  TYPE_3__ Token ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_31__ {int /*<<< orphan*/ * pTable; } ;
struct TYPE_30__ {TYPE_2__* db; } ;
struct TYPE_27__ {char* zDbSName; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Expire ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_5__* FUNC6 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC9 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 int FUNC11 (TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC13(Parse *pParse, Token *pName1, Token *pName2){
  sqlite3 *db = pParse->db;
  int iDb;
  int i;
  char *z, *zDb;
  Table *pTab;
  Index *pIdx;
  Token *pTableName;
  Vdbe *v;

  /* Read the database schema. If an error occurs, leave an error message
  ** and code in pParse and return NULL. */
  FUNC2( FUNC3(pParse->db) );
  if( SQLITE_OK!=FUNC10(pParse) ){
    return;
  }

  FUNC2( pName2!=0 || pName1==0 );
  if( pName1==0 ){
    /* Form 1:  Analyze everything */
    for(i=0; i<db->nDb; i++){
      if( i==1 ) continue;  /* Do not analyze the TEMP database */
      FUNC0(pParse, i);
    }
  }else if( pName2->n==0 && (iDb = FUNC5(db, pName1))>=0 ){
    /* Analyze the schema named as the argument */
    FUNC0(pParse, iDb);
  }else{
    /* Form 3: Analyze the table or index named as an argument */
    iDb = FUNC11(pParse, pName1, pName2, &pTableName);
    if( iDb>=0 ){
      zDb = pName2->n ? db->aDb[iDb].zDbSName : 0;
      z = FUNC9(db, pTableName);
      if( z ){
        if( (pIdx = FUNC6(db, z, zDb))!=0 ){
          FUNC1(pParse, pIdx->pTable, pIdx);
        }else if( (pTab = FUNC8(pParse, 0, z, zDb))!=0 ){
          FUNC1(pParse, pTab, 0);
        }
        FUNC4(db, z);
      }
    }
  }
  if( db->nSqlExec==0 && (v = FUNC7(pParse))!=0 ){
    FUNC12(v, OP_Expire);
  }
}