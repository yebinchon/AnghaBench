
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_56__ TYPE_9__ ;
typedef struct TYPE_55__ TYPE_8__ ;
typedef struct TYPE_54__ TYPE_7__ ;
typedef struct TYPE_53__ TYPE_6__ ;
typedef struct TYPE_52__ TYPE_5__ ;
typedef struct TYPE_51__ TYPE_4__ ;
typedef struct TYPE_50__ TYPE_3__ ;
typedef struct TYPE_49__ TYPE_2__ ;
typedef struct TYPE_48__ TYPE_1__ ;
typedef struct TYPE_47__ TYPE_11__ ;
typedef struct TYPE_46__ TYPE_10__ ;


typedef int u8 ;
struct TYPE_50__ {int newTnum; scalar_t__ busy; } ;
struct TYPE_51__ {int mDbFlags; TYPE_3__ init; TYPE_11__* aDb; int mallocFailed; } ;
typedef TYPE_4__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_52__ {char* z; scalar_t__ n; } ;
typedef TYPE_5__ Token ;
struct TYPE_53__ {int tabFlags; int tnum; scalar_t__ iPKey; scalar_t__ pSelect; scalar_t__ addColOffset; int zName; TYPE_8__* pSchema; scalar_t__ aCol; scalar_t__ nCol; TYPE_10__* pIndex; scalar_t__ pCheck; } ;
typedef TYPE_6__ Table ;
struct TYPE_49__ {int z; } ;
struct TYPE_56__ {int nMem; int nTab; int regRoot; TYPE_2__ sNameToken; TYPE_6__* pNewTable; int regRowid; TYPE_5__ sLastToken; scalar_t__ nErr; TYPE_4__* db; } ;
struct TYPE_55__ {int tblHash; } ;
struct TYPE_54__ {int iSDParm; int iSdst; int nSdst; } ;
struct TYPE_48__ {scalar_t__ pSeqTab; } ;
struct TYPE_47__ {int zDbSName; TYPE_1__* pSchema; } ;
struct TYPE_46__ {struct TYPE_46__* pNext; } ;
typedef TYPE_7__ SelectDest ;
typedef int Select ;
typedef TYPE_8__ Schema ;
typedef TYPE_9__ Parse ;
typedef TYPE_10__ Index ;
typedef TYPE_11__ Db ;


 int DBFLAG_SchemaChange ;
 int MASTER_NAME ;
 int NC_IsCheck ;
 scalar_t__ NEVER (int) ;
 int OPFLAG_P2ISREG ;
 int OP_Close ;
 int OP_InitCoroutine ;
 int OP_Insert ;
 int OP_MakeRecord ;
 int OP_NewRowid ;
 int OP_OpenWrite ;
 int OP_Yield ;
 int SRT_Coroutine ;
 int TF_Autoincrement ;
 int TF_HasPrimaryKey ;
 int TF_NoVisibleRowid ;
 int TF_Readonly ;
 int TF_Shadow ;
 int TF_WithoutRowid ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int convertToWithoutRowidTable (TYPE_9__*,TYPE_6__*) ;
 char* createTableStmt (TYPE_4__*,TYPE_6__*) ;
 int estimateIndexWidth (TYPE_10__*) ;
 int estimateTableWidth (TYPE_6__*) ;
 scalar_t__ isShadowTableName (TYPE_4__*,int ) ;
 int sqlite3ChangeCookie (TYPE_9__*,int) ;
 int sqlite3DbFree (TYPE_4__*,char*) ;
 int sqlite3DeleteTable (TYPE_4__*,TYPE_6__*) ;
 int sqlite3ErrorMsg (TYPE_9__*,char*,...) ;
 int * sqlite3GetVdbe (TYPE_9__*) ;
 TYPE_6__* sqlite3HashInsert (int *,int ,TYPE_6__*) ;
 char* sqlite3MPrintf (TYPE_4__*,char*,char*,...) ;
 int sqlite3MayAbort (TYPE_9__*) ;
 int sqlite3NestedParse (TYPE_9__*,char*,int ,...) ;
 int sqlite3OomFault (TYPE_4__*) ;
 scalar_t__ sqlite3PrimaryKeyIndex (TYPE_6__*) ;
 int sqlite3ResolveSelfReference (TYPE_9__*,TYPE_6__*,int ,int ,scalar_t__) ;
 TYPE_6__* sqlite3ResultSetOfSelect (TYPE_9__*,int *) ;
 int sqlite3SchemaMutexHeld (TYPE_4__*,int,int ) ;
 int sqlite3SchemaToIndex (TYPE_4__*,TYPE_8__*) ;
 int sqlite3Select (TYPE_9__*,int *,TYPE_7__*) ;
 int sqlite3SelectDestInit (TYPE_7__*,int ,int) ;
 int sqlite3TableAffinity (int *,TYPE_6__*,int ) ;
 scalar_t__ sqlite3Utf8CharLen (char const*,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddParseSchemaOp (int *,int,char*) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeEndCoroutine (int *,int) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;

void sqlite3EndTable(
  Parse *pParse,
  Token *pCons,
  Token *pEnd,
  u8 tabOpts,
  Select *pSelect
){
  Table *p;
  sqlite3 *db = pParse->db;
  int iDb;
  Index *pIdx;

  if( pEnd==0 && pSelect==0 ){
    return;
  }
  assert( !db->mallocFailed );
  p = pParse->pNewTable;
  if( p==0 ) return;

  if( pSelect==0 && isShadowTableName(db, p->zName) ){
    p->tabFlags |= TF_Shadow;
  }
  if( db->init.busy ){
    if( pSelect ){
      sqlite3ErrorMsg(pParse, "");
      return;
    }
    p->tnum = db->init.newTnum;
    if( p->tnum==1 ) p->tabFlags |= TF_Readonly;
  }

  assert( (p->tabFlags & TF_HasPrimaryKey)==0
       || p->iPKey>=0 || sqlite3PrimaryKeyIndex(p)!=0 );
  assert( (p->tabFlags & TF_HasPrimaryKey)!=0
       || (p->iPKey<0 && sqlite3PrimaryKeyIndex(p)==0) );


  if( tabOpts & TF_WithoutRowid ){
    if( (p->tabFlags & TF_Autoincrement) ){
      sqlite3ErrorMsg(pParse,
          "AUTOINCREMENT not allowed on WITHOUT ROWID tables");
      return;
    }
    if( (p->tabFlags & TF_HasPrimaryKey)==0 ){
      sqlite3ErrorMsg(pParse, "PRIMARY KEY missing on table %s", p->zName);
    }else{
      p->tabFlags |= TF_WithoutRowid | TF_NoVisibleRowid;
      convertToWithoutRowidTable(pParse, p);
    }
  }

  iDb = sqlite3SchemaToIndex(db, p->pSchema);




  if( p->pCheck ){
    sqlite3ResolveSelfReference(pParse, p, NC_IsCheck, 0, p->pCheck);
  }



  estimateTableWidth(p);
  for(pIdx=p->pIndex; pIdx; pIdx=pIdx->pNext){
    estimateIndexWidth(pIdx);
  }







  if( !db->init.busy ){
    int n;
    Vdbe *v;
    char *zType;
    char *zType2;
    char *zStmt;

    v = sqlite3GetVdbe(pParse);
    if( NEVER(v==0) ) return;

    sqlite3VdbeAddOp1(v, OP_Close, 0);




    if( p->pSelect==0 ){

      zType = "table";
      zType2 = "TABLE";

    }else{

      zType = "view";
      zType2 = "VIEW";

    }
    if( pSelect ){
      SelectDest dest;
      int regYield;
      int addrTop;
      int regRec;
      int regRowid;
      int addrInsLoop;
      Table *pSelTab;

      regYield = ++pParse->nMem;
      regRec = ++pParse->nMem;
      regRowid = ++pParse->nMem;
      assert(pParse->nTab==1);
      sqlite3MayAbort(pParse);
      sqlite3VdbeAddOp3(v, OP_OpenWrite, 1, pParse->regRoot, iDb);
      sqlite3VdbeChangeP5(v, OPFLAG_P2ISREG);
      pParse->nTab = 2;
      addrTop = sqlite3VdbeCurrentAddr(v) + 1;
      sqlite3VdbeAddOp3(v, OP_InitCoroutine, regYield, 0, addrTop);
      if( pParse->nErr ) return;
      pSelTab = sqlite3ResultSetOfSelect(pParse, pSelect);
      if( pSelTab==0 ) return;
      assert( p->aCol==0 );
      p->nCol = pSelTab->nCol;
      p->aCol = pSelTab->aCol;
      pSelTab->nCol = 0;
      pSelTab->aCol = 0;
      sqlite3DeleteTable(db, pSelTab);
      sqlite3SelectDestInit(&dest, SRT_Coroutine, regYield);
      sqlite3Select(pParse, pSelect, &dest);
      if( pParse->nErr ) return;
      sqlite3VdbeEndCoroutine(v, regYield);
      sqlite3VdbeJumpHere(v, addrTop - 1);
      addrInsLoop = sqlite3VdbeAddOp1(v, OP_Yield, dest.iSDParm);
      VdbeCoverage(v);
      sqlite3VdbeAddOp3(v, OP_MakeRecord, dest.iSdst, dest.nSdst, regRec);
      sqlite3TableAffinity(v, p, 0);
      sqlite3VdbeAddOp2(v, OP_NewRowid, 1, regRowid);
      sqlite3VdbeAddOp3(v, OP_Insert, 1, regRec, regRowid);
      sqlite3VdbeGoto(v, addrInsLoop);
      sqlite3VdbeJumpHere(v, addrInsLoop);
      sqlite3VdbeAddOp1(v, OP_Close, 1);
    }


    if( pSelect ){
      zStmt = createTableStmt(db, p);
    }else{
      Token *pEnd2 = tabOpts ? &pParse->sLastToken : pEnd;
      n = (int)(pEnd2->z - pParse->sNameToken.z);
      if( pEnd2->z[0]!=';' ) n += pEnd2->n;
      zStmt = sqlite3MPrintf(db,
          "CREATE %s %.*s", zType2, n, pParse->sNameToken.z
      );
    }





    sqlite3NestedParse(pParse,
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
    sqlite3DbFree(db, zStmt);
    sqlite3ChangeCookie(pParse, iDb);





    if( (p->tabFlags & TF_Autoincrement)!=0 ){
      Db *pDb = &db->aDb[iDb];
      assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
      if( pDb->pSchema->pSeqTab==0 ){
        sqlite3NestedParse(pParse,
          "CREATE TABLE %Q.sqlite_sequence(name,seq)",
          pDb->zDbSName
        );
      }
    }



    sqlite3VdbeAddParseSchemaOp(v, iDb,
           sqlite3MPrintf(db, "tbl_name='%q' AND type!='trigger'", p->zName));
  }




  if( db->init.busy ){
    Table *pOld;
    Schema *pSchema = p->pSchema;
    assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
    pOld = sqlite3HashInsert(&pSchema->tblHash, p->zName, p);
    if( pOld ){
      assert( p==pOld );
      sqlite3OomFault(db);
      return;
    }
    pParse->pNewTable = 0;
    db->mDbFlags |= DBFLAG_SchemaChange;


    if( !p->pSelect ){
      const char *zName = (const char *)pParse->sNameToken.z;
      int nName;
      assert( !pSelect && pCons && pEnd );
      if( pCons->z==0 ){
        pCons = pEnd;
      }
      nName = (int)((const char *)pCons->z - zName);
      p->addColOffset = 13 + sqlite3Utf8CharLen(zName, nName);
    }

  }
}
