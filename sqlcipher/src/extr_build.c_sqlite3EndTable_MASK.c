#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_56__   TYPE_9__ ;
typedef  struct TYPE_55__   TYPE_8__ ;
typedef  struct TYPE_54__   TYPE_7__ ;
typedef  struct TYPE_53__   TYPE_6__ ;
typedef  struct TYPE_52__   TYPE_5__ ;
typedef  struct TYPE_51__   TYPE_4__ ;
typedef  struct TYPE_50__   TYPE_3__ ;
typedef  struct TYPE_49__   TYPE_2__ ;
typedef  struct TYPE_48__   TYPE_1__ ;
typedef  struct TYPE_47__   TYPE_11__ ;
typedef  struct TYPE_46__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_50__ {int newTnum; scalar_t__ busy; } ;
struct TYPE_51__ {int /*<<< orphan*/  mDbFlags; TYPE_3__ init; TYPE_11__* aDb; int /*<<< orphan*/  mallocFailed; } ;
typedef  TYPE_4__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_52__ {char* z; scalar_t__ n; } ;
typedef  TYPE_5__ Token ;
struct TYPE_53__ {int tabFlags; int tnum; scalar_t__ iPKey; scalar_t__ pSelect; scalar_t__ addColOffset; int /*<<< orphan*/  zName; TYPE_8__* pSchema; scalar_t__ aCol; scalar_t__ nCol; TYPE_10__* pIndex; scalar_t__ pCheck; } ;
typedef  TYPE_6__ Table ;
struct TYPE_49__ {int z; } ;
struct TYPE_56__ {int nMem; int nTab; int regRoot; TYPE_2__ sNameToken; TYPE_6__* pNewTable; int /*<<< orphan*/  regRowid; TYPE_5__ sLastToken; scalar_t__ nErr; TYPE_4__* db; } ;
struct TYPE_55__ {int /*<<< orphan*/  tblHash; } ;
struct TYPE_54__ {int iSDParm; int iSdst; int nSdst; } ;
struct TYPE_48__ {scalar_t__ pSeqTab; } ;
struct TYPE_47__ {int /*<<< orphan*/  zDbSName; TYPE_1__* pSchema; } ;
struct TYPE_46__ {struct TYPE_46__* pNext; } ;
typedef  TYPE_7__ SelectDest ;
typedef  int /*<<< orphan*/  Select ;
typedef  TYPE_8__ Schema ;
typedef  TYPE_9__ Parse ;
typedef  TYPE_10__ Index ;
typedef  TYPE_11__ Db ;

/* Variables and functions */
 int /*<<< orphan*/  DBFLAG_SchemaChange ; 
 int /*<<< orphan*/  MASTER_NAME ; 
 int /*<<< orphan*/  NC_IsCheck ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  OPFLAG_P2ISREG ; 
 int /*<<< orphan*/  OP_Close ; 
 int /*<<< orphan*/  OP_InitCoroutine ; 
 int /*<<< orphan*/  OP_Insert ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_NewRowid ; 
 int /*<<< orphan*/  OP_OpenWrite ; 
 int /*<<< orphan*/  OP_Yield ; 
 int /*<<< orphan*/  SRT_Coroutine ; 
 int TF_Autoincrement ; 
 int TF_HasPrimaryKey ; 
 int TF_NoVisibleRowid ; 
 int TF_Readonly ; 
 int TF_Shadow ; 
 int TF_WithoutRowid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,TYPE_6__*) ; 
 char* FUNC4 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_9__*) ; 
 TYPE_6__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*) ; 
 char* FUNC14 (TYPE_4__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_9__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 scalar_t__ FUNC18 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_9__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_6__* FUNC20 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC22 (TYPE_4__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_9__*,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (char const*,int) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int) ; 

void FUNC36(
  Parse *pParse,          /* Parse context */
  Token *pCons,           /* The ',' token after the last column defn. */
  Token *pEnd,            /* The ')' before options in the CREATE TABLE */
  u8 tabOpts,             /* Extra table options. Usually 0. */
  Select *pSelect         /* Select from a "CREATE ... AS SELECT" */
){
  Table *p;                 /* The new table */
  sqlite3 *db = pParse->db; /* The database connection */
  int iDb;                  /* Database in which the table lives */
  Index *pIdx;              /* An implied index of the table */

  if( pEnd==0 && pSelect==0 ){
    return;
  }
  FUNC2( !db->mallocFailed );
  p = pParse->pNewTable;
  if( p==0 ) return;

  if( pSelect==0 && FUNC7(db, p->zName) ){
    p->tabFlags |= TF_Shadow;
  }

  /* If the db->init.busy is 1 it means we are reading the SQL off the
  ** "sqlite_master" or "sqlite_temp_master" table on the disk.
  ** So do not write to the disk again.  Extract the root page number
  ** for the table from the db->init.newTnum field.  (The page number
  ** should have been put there by the sqliteOpenCb routine.)
  **
  ** If the root page number is 1, that means this is the sqlite_master
  ** table itself.  So mark it read-only.
  */
  if( db->init.busy ){
    if( pSelect ){
      FUNC11(pParse, "");
      return;
    }
    p->tnum = db->init.newTnum;
    if( p->tnum==1 ) p->tabFlags |= TF_Readonly;
  }

  FUNC2( (p->tabFlags & TF_HasPrimaryKey)==0
       || p->iPKey>=0 || FUNC18(p)!=0 );
  FUNC2( (p->tabFlags & TF_HasPrimaryKey)!=0
       || (p->iPKey<0 && FUNC18(p)==0) );

  /* Special processing for WITHOUT ROWID Tables */
  if( tabOpts & TF_WithoutRowid ){
    if( (p->tabFlags & TF_Autoincrement) ){
      FUNC11(pParse,
          "AUTOINCREMENT not allowed on WITHOUT ROWID tables");
      return;
    }
    if( (p->tabFlags & TF_HasPrimaryKey)==0 ){
      FUNC11(pParse, "PRIMARY KEY missing on table %s", p->zName);
    }else{
      p->tabFlags |= TF_WithoutRowid | TF_NoVisibleRowid;
      FUNC3(pParse, p);
    }
  }

  iDb = FUNC22(db, p->pSchema);

#ifndef SQLITE_OMIT_CHECK
  /* Resolve names in all CHECK constraint expressions.
  */
  if( p->pCheck ){
    FUNC19(pParse, p, NC_IsCheck, 0, p->pCheck);
  }
#endif /* !defined(SQLITE_OMIT_CHECK) */

  /* Estimate the average row size for the table and for all implied indices */
  FUNC6(p);
  for(pIdx=p->pIndex; pIdx; pIdx=pIdx->pNext){
    FUNC5(pIdx);
  }

  /* If not initializing, then create a record for the new table
  ** in the SQLITE_MASTER table of the database.
  **
  ** If this is a TEMPORARY table, write the entry into the auxiliary
  ** file instead of into the main database file.
  */
  if( !db->init.busy ){
    int n;
    Vdbe *v;
    char *zType;    /* "view" or "table" */
    char *zType2;   /* "VIEW" or "TABLE" */
    char *zStmt;    /* Text of the CREATE TABLE or CREATE VIEW statement */

    v = FUNC12(pParse);
    if( FUNC0(v==0) ) return;

    FUNC27(v, OP_Close, 0);

    /* 
    ** Initialize zType for the new view or table.
    */
    if( p->pSelect==0 ){
      /* A regular table */
      zType = "table";
      zType2 = "TABLE";
#ifndef SQLITE_OMIT_VIEW
    }else{
      /* A view */
      zType = "view";
      zType2 = "VIEW";
#endif
    }

    /* If this is a CREATE TABLE xx AS SELECT ..., execute the SELECT
    ** statement to populate the new table. The root-page number for the
    ** new table is in register pParse->regRoot.
    **
    ** Once the SELECT has been coded by sqlite3Select(), it is in a
    ** suitable state to query for the column names and types to be used
    ** by the new table.
    **
    ** A shared-cache write-lock is not required to write to the new table,
    ** as a schema-lock must have already been obtained to create it. Since
    ** a schema-lock excludes all other database users, the write-lock would
    ** be redundant.
    */
    if( pSelect ){
      SelectDest dest;    /* Where the SELECT should store results */
      int regYield;       /* Register holding co-routine entry-point */
      int addrTop;        /* Top of the co-routine */
      int regRec;         /* A record to be insert into the new table */
      int regRowid;       /* Rowid of the next row to insert */
      int addrInsLoop;    /* Top of the loop for inserting rows */
      Table *pSelTab;     /* A table that describes the SELECT results */

      regYield = ++pParse->nMem;
      regRec = ++pParse->nMem;
      regRowid = ++pParse->nMem;
      FUNC2(pParse->nTab==1);
      FUNC15(pParse);
      FUNC29(v, OP_OpenWrite, 1, pParse->regRoot, iDb);
      FUNC31(v, OPFLAG_P2ISREG);
      pParse->nTab = 2;
      addrTop = FUNC32(v) + 1;
      FUNC29(v, OP_InitCoroutine, regYield, 0, addrTop);
      if( pParse->nErr ) return;
      pSelTab = FUNC20(pParse, pSelect);
      if( pSelTab==0 ) return;
      FUNC2( p->aCol==0 );
      p->nCol = pSelTab->nCol;
      p->aCol = pSelTab->aCol;
      pSelTab->nCol = 0;
      pSelTab->aCol = 0;
      FUNC10(db, pSelTab);
      FUNC24(&dest, SRT_Coroutine, regYield);
      FUNC23(pParse, pSelect, &dest);
      if( pParse->nErr ) return;
      FUNC33(v, regYield);
      FUNC35(v, addrTop - 1);
      addrInsLoop = FUNC27(v, OP_Yield, dest.iSDParm);
      FUNC1(v);
      FUNC29(v, OP_MakeRecord, dest.iSdst, dest.nSdst, regRec);
      FUNC25(v, p, 0);
      FUNC28(v, OP_NewRowid, 1, regRowid);
      FUNC29(v, OP_Insert, 1, regRec, regRowid);
      FUNC34(v, addrInsLoop);
      FUNC35(v, addrInsLoop);
      FUNC27(v, OP_Close, 1);
    }

    /* Compute the complete text of the CREATE statement */
    if( pSelect ){
      zStmt = FUNC4(db, p);
    }else{
      Token *pEnd2 = tabOpts ? &pParse->sLastToken : pEnd;
      n = (int)(pEnd2->z - pParse->sNameToken.z);
      if( pEnd2->z[0]!=';' ) n += pEnd2->n;
      zStmt = FUNC14(db, 
          "CREATE %s %.*s", zType2, n, pParse->sNameToken.z
      );
    }

    /* A slot for the record has already been allocated in the 
    ** SQLITE_MASTER table.  We just need to update that slot with all
    ** the information we've collected.
    */
    FUNC16(pParse,
      "UPDATE %Q.%s "
         "SET type='%s', name=%Q, tbl_name=%Q, rootpage=#%d, sql=%Q "
       "WHERE rowid=#%d",
      db->aDb[iDb].zDbSName, MASTER_NAME,
      zType,
      p->zName,
      p->zName,
      pParse->regRoot,
      zStmt,
      pParse->regRowid
    );
    FUNC9(db, zStmt);
    FUNC8(pParse, iDb);

#ifndef SQLITE_OMIT_AUTOINCREMENT
    /* Check to see if we need to create an sqlite_sequence table for
    ** keeping track of autoincrement keys.
    */
    if( (p->tabFlags & TF_Autoincrement)!=0 ){
      Db *pDb = &db->aDb[iDb];
      FUNC2( FUNC21(db, iDb, 0) );
      if( pDb->pSchema->pSeqTab==0 ){
        FUNC16(pParse,
          "CREATE TABLE %Q.sqlite_sequence(name,seq)",
          pDb->zDbSName
        );
      }
    }
#endif

    /* Reparse everything to update our internal data structures */
    FUNC30(v, iDb,
           FUNC14(db, "tbl_name='%q' AND type!='trigger'", p->zName));
  }


  /* Add the table to the in-memory representation of the database.
  */
  if( db->init.busy ){
    Table *pOld;
    Schema *pSchema = p->pSchema;
    FUNC2( FUNC21(db, iDb, 0) );
    pOld = FUNC13(&pSchema->tblHash, p->zName, p);
    if( pOld ){
      FUNC2( p==pOld );  /* Malloc must have failed inside HashInsert() */
      FUNC17(db);
      return;
    }
    pParse->pNewTable = 0;
    db->mDbFlags |= DBFLAG_SchemaChange;

#ifndef SQLITE_OMIT_ALTERTABLE
    if( !p->pSelect ){
      const char *zName = (const char *)pParse->sNameToken.z;
      int nName;
      FUNC2( !pSelect && pCons && pEnd );
      if( pCons->z==0 ){
        pCons = pEnd;
      }
      nName = (int)((const char *)pCons->z - zName);
      p->addColOffset = 13 + FUNC26(zName, nName);
    }
#endif
  }
}