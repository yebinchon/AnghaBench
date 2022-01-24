#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {TYPE_2__* aDb; scalar_t__ mallocFailed; } ;
typedef  TYPE_3__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_29__ {int /*<<< orphan*/  zName; } ;
typedef  TYPE_4__ Table ;
struct TYPE_32__ {scalar_t__ idxType; char const* zName; int /*<<< orphan*/  tnum; TYPE_4__* pTable; int /*<<< orphan*/  pSchema; } ;
struct TYPE_31__ {scalar_t__ nErr; int checkSchema; TYPE_3__* db; } ;
struct TYPE_30__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_27__ {char* zDbSName; } ;
struct TYPE_26__ {int /*<<< orphan*/  zDatabase; int /*<<< orphan*/  zName; } ;
typedef  TYPE_5__ SrcList ;
typedef  TYPE_6__ Parse ;
typedef  TYPE_7__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  MASTER_NAME ; 
 int /*<<< orphan*/  OMIT_TEMPDB ; 
 int /*<<< orphan*/  OP_DropIndex ; 
 char* FUNC0 (int) ; 
 int SQLITE_DELETE ; 
 int SQLITE_DROP_INDEX ; 
 int SQLITE_DROP_TEMP_INDEX ; 
 scalar_t__ SQLITE_IDXTYPE_APPDEF ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,char*,TYPE_5__*,...) ; 
 TYPE_7__* FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,char*,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC12 (TYPE_6__*) ; 
 int FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void FUNC16(Parse *pParse, SrcList *pName, int ifExists){
  Index *pIndex;
  Vdbe *v;
  sqlite3 *db = pParse->db;
  int iDb;

  FUNC1( pParse->nErr==0 );   /* Never called with prior errors */
  if( db->mallocFailed ){
    goto exit_drop_index;
  }
  FUNC1( pName->nSrc==1 );
  if( SQLITE_OK!=FUNC12(pParse) ){
    goto exit_drop_index;
  }
  pIndex = FUNC9(db, pName->a[0].zName, pName->a[0].zDatabase);
  if( pIndex==0 ){
    if( !ifExists ){
      FUNC8(pParse, "no such index: %S", pName, 0);
    }else{
      FUNC7(pParse, pName->a[0].zDatabase);
    }
    pParse->checkSchema = 1;
    goto exit_drop_index;
  }
  if( pIndex->idxType!=SQLITE_IDXTYPE_APPDEF ){
    FUNC8(pParse, "index associated with UNIQUE "
      "or PRIMARY KEY constraint cannot be dropped", 0);
    goto exit_drop_index;
  }
  iDb = FUNC13(db, pIndex->pSchema);
#ifndef SQLITE_OMIT_AUTHORIZATION
  {
    int code = SQLITE_DROP_INDEX;
    Table *pTab = pIndex->pTable;
    const char *zDb = db->aDb[iDb].zDbSName;
    const char *zTab = FUNC0(iDb);
    if( FUNC3(pParse, SQLITE_DELETE, zTab, 0, zDb) ){
      goto exit_drop_index;
    }
    if( !OMIT_TEMPDB && iDb ) code = SQLITE_DROP_TEMP_INDEX;
    if( FUNC3(pParse, code, pIndex->zName, pTab->zName, zDb) ){
      goto exit_drop_index;
    }
  }
#endif

  /* Generate code to remove the index and from the master table */
  v = FUNC10(pParse);
  if( v ){
    FUNC4(pParse, 1, iDb);
    FUNC11(pParse,
       "DELETE FROM %Q.%s WHERE name=%Q AND type='index'",
       db->aDb[iDb].zDbSName, MASTER_NAME, pIndex->zName
    );
    FUNC6(pParse, iDb, "idx", pIndex->zName);
    FUNC5(pParse, iDb);
    FUNC2(pParse, pIndex->tnum, iDb);
    FUNC15(v, OP_DropIndex, iDb, 0, 0, pIndex->zName, 0);
  }

exit_drop_index:
  FUNC14(db, pName);
}