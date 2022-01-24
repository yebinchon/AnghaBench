#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_27__ {scalar_t__ z; } ;
typedef  TYPE_3__ Token ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_28__ {TYPE_2__* db; } ;
struct TYPE_25__ {char* zDbSName; } ;
typedef  TYPE_4__ Parse ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*,char*,char const*) ; 
 char* FUNC11 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__**) ; 

void FUNC15(Parse *pParse, Token *pName1, Token *pName2){
  CollSeq *pColl;             /* Collating sequence to be reindexed, or NULL */
  char *z;                    /* Name of a table or index */
  const char *zDb;            /* Name of the database */
  Table *pTab;                /* A table in the database */
  Index *pIndex;              /* An index associated with pTab */
  int iDb;                    /* The database index number */
  sqlite3 *db = pParse->db;   /* The database connection */
  Token *pObjName;            /* Name of the table or index to be reindexed */

  /* Read the database schema. If an error occurs, leave an error message
  ** and code in pParse and return NULL. */
  if( SQLITE_OK!=FUNC12(pParse) ){
    return;
  }

  if( pName1==0 ){
    FUNC3(pParse, 0);
    return;
  }else if( FUNC1(pName2==0) || pName2->z==0 ){
    char *zColl;
    FUNC2( pName1->z );
    zColl = FUNC11(pParse->db, pName1);
    if( !zColl ) return;
    pColl = FUNC8(db, FUNC0(db), zColl, 0);
    if( pColl ){
      FUNC3(pParse, zColl);
      FUNC6(db, zColl);
      return;
    }
    FUNC6(db, zColl);
  }
  iDb = FUNC14(pParse, pName1, pName2, &pObjName);
  if( iDb<0 ) return;
  z = FUNC11(db, pObjName);
  if( z==0 ) return;
  zDb = db->aDb[iDb].zDbSName;
  pTab = FUNC10(db, z, zDb);
  if( pTab ){
    FUNC4(pParse, pTab, 0);
    FUNC6(db, z);
    return;
  }
  pIndex = FUNC9(db, z, zDb);
  FUNC6(db, z);
  if( pIndex ){
    FUNC5(pParse, 0, iDb);
    FUNC13(pParse, pIndex, -1);
    return;
  }
  FUNC7(pParse, "unable to identify the object to be reindexed");
}