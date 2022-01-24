#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_6__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;
typedef  struct TYPE_34__   TYPE_17__ ;
typedef  struct TYPE_33__   TYPE_15__ ;

/* Type definitions */
struct TYPE_37__ {int nDb; TYPE_1__* aDb; int /*<<< orphan*/  suppressErr; scalar_t__ mallocFailed; } ;
typedef  TYPE_3__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_38__ {char const* zName; scalar_t__ pSelect; int /*<<< orphan*/  pSchema; } ;
typedef  TYPE_4__ Table ;
struct TYPE_40__ {scalar_t__ nErr; TYPE_3__* db; } ;
struct TYPE_39__ {int nSrc; TYPE_15__* a; } ;
struct TYPE_36__ {char* zName; } ;
struct TYPE_35__ {char* zDbSName; } ;
struct TYPE_34__ {TYPE_2__* pMod; } ;
struct TYPE_33__ {int /*<<< orphan*/  zDatabase; } ;
typedef  TYPE_5__ SrcList ;
typedef  TYPE_6__ Parse ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int LOCATE_VIEW ; 
 int /*<<< orphan*/  OMIT_TEMPDB ; 
 char* FUNC1 (int) ; 
 int SQLITE_DELETE ; 
 int SQLITE_DROP_TABLE ; 
 int SQLITE_DROP_TEMP_TABLE ; 
 int SQLITE_DROP_TEMP_VIEW ; 
 int SQLITE_DROP_VIEW ; 
 int SQLITE_DROP_VTABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_5__*,TYPE_4__*) ; 
 TYPE_17__* FUNC10 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_6__*) ; 
 TYPE_4__* FUNC12 (TYPE_6__*,int,TYPE_15__*) ; 
 scalar_t__ FUNC13 (TYPE_6__*) ; 
 int FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_5__*) ; 
 scalar_t__ FUNC16 (char const*,char*,int) ; 
 scalar_t__ FUNC17 (TYPE_6__*,TYPE_4__*) ; 

void FUNC18(Parse *pParse, SrcList *pName, int isView, int noErr){
  Table *pTab;
  Vdbe *v;
  sqlite3 *db = pParse->db;
  int iDb;

  if( db->mallocFailed ){
    goto exit_drop_table;
  }
  FUNC2( pParse->nErr==0 );
  FUNC2( pName->nSrc==1 );
  if( FUNC13(pParse) ) goto exit_drop_table;
  if( noErr ) db->suppressErr++;
  FUNC2( isView==0 || isView==LOCATE_VIEW );
  pTab = FUNC12(pParse, isView, &pName->a[0]);
  if( noErr ) db->suppressErr--;

  if( pTab==0 ){
    if( noErr ) FUNC7(pParse, pName->a[0].zDatabase);
    goto exit_drop_table;
  }
  iDb = FUNC14(db, pTab->pSchema);
  FUNC2( iDb>=0 && iDb<db->nDb );

  /* If pTab is a virtual table, call ViewGetColumnNames() to ensure
  ** it is initialized.
  */
  if( FUNC0(pTab) && FUNC17(pParse, pTab) ){
    goto exit_drop_table;
  }
#ifndef SQLITE_OMIT_AUTHORIZATION
  {
    int code;
    const char *zTab = FUNC1(iDb);
    const char *zDb = db->aDb[iDb].zDbSName;
    const char *zArg2 = 0;
    if( FUNC3(pParse, SQLITE_DELETE, zTab, 0, zDb)){
      goto exit_drop_table;
    }
    if( isView ){
      if( !OMIT_TEMPDB && iDb==1 ){
        code = SQLITE_DROP_TEMP_VIEW;
      }else{
        code = SQLITE_DROP_VIEW;
      }
#ifndef SQLITE_OMIT_VIRTUALTABLE
    }else if( FUNC0(pTab) ){
      code = SQLITE_DROP_VTABLE;
      zArg2 = FUNC10(db, pTab)->pMod->zName;
#endif
    }else{
      if( !OMIT_TEMPDB && iDb==1 ){
        code = SQLITE_DROP_TEMP_TABLE;
      }else{
        code = SQLITE_DROP_TABLE;
      }
    }
    if( FUNC3(pParse, code, pTab->zName, zArg2, zDb) ){
      goto exit_drop_table;
    }
    if( FUNC3(pParse, SQLITE_DELETE, pTab->zName, 0, zDb) ){
      goto exit_drop_table;
    }
  }
#endif
  if( FUNC16(pTab->zName, "sqlite_", 7)==0 
    && FUNC16(pTab->zName, "sqlite_stat", 11)!=0 ){
    FUNC8(pParse, "table %s may not be dropped", pTab->zName);
    goto exit_drop_table;
  }

#ifndef SQLITE_OMIT_VIEW
  /* Ensure DROP TABLE is not used on a view, and DROP VIEW is not used
  ** on a table.
  */
  if( isView && pTab->pSelect==0 ){
    FUNC8(pParse, "use DROP TABLE to delete table %s", pTab->zName);
    goto exit_drop_table;
  }
  if( !isView && pTab->pSelect ){
    FUNC8(pParse, "use DROP VIEW to delete view %s", pTab->zName);
    goto exit_drop_table;
  }
#endif

  /* Generate code to remove the table from the master table
  ** on disk.
  */
  v = FUNC11(pParse);
  if( v ){
    FUNC4(pParse, 1, iDb);
    if( !isView ){
      FUNC5(pParse, iDb, "tbl", pTab->zName);
      FUNC9(pParse, pName, pTab);
    }
    FUNC6(pParse, pTab, iDb, isView);
  }

exit_drop_table:
  FUNC15(db, pName);
}