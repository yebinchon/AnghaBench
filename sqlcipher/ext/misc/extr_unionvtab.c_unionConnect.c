
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3_stmt ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3 ;
struct TYPE_11__ {int bSwarm; int nSrc; int iPK; TYPE_2__* aSrc; scalar_t__ bHasContext; int nMaxOpen; int * db; } ;
typedef TYPE_1__ UnionTab ;
struct TYPE_12__ {scalar_t__ iMax; void* zDb; void* zTab; void* zContext; void* zFile; scalar_t__ iMin; } ;
typedef TYPE_2__ UnionSrc ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SWARMVTAB_MAX_OPEN ;
 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3_column_int (int *,int) ;
 scalar_t__ sqlite3_column_int64 (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_declare_vtab (int *,char const*) ;
 char* sqlite3_mprintf (char*,...) ;
 scalar_t__ sqlite3_realloc64 (TYPE_2__*,int) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ sqlite3_stricmp (char*,char const* const) ;
 int unionConfigureVtab (int*,TYPE_1__*,int *,int,char const* const*,char**) ;
 int unionDequote (char*) ;
 int unionDisconnect (int *) ;
 int unionFinalize (int*,int *,char**) ;
 int * unionGetDb (TYPE_1__*,TYPE_2__*) ;
 TYPE_1__* unionMalloc (int*,int) ;
 int unionOpenDatabase (TYPE_1__*,int ,char**) ;
 int * unionPreparePrintf (int*,char**,int *,char*,char*,...) ;
 int unionSourceCheck (TYPE_1__*,char**) ;
 void* unionStrdup (int*,char const*) ;

__attribute__((used)) static int unionConnect(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  UnionTab *pTab = 0;
  int rc = SQLITE_OK;
  int bSwarm = (pAux==0 ? 0 : 1);
  const char *zVtab = (bSwarm ? "swarmvtab" : "unionvtab");

  if( sqlite3_stricmp("temp", argv[1]) ){

    *pzErr = sqlite3_mprintf("%s tables must be created in TEMP schema", zVtab);
    rc = SQLITE_ERROR;
  }else if( argc<4 || (argc>4 && bSwarm==0) ){
    *pzErr = sqlite3_mprintf("wrong number of arguments for %s", zVtab);
    rc = SQLITE_ERROR;
  }else{
    int nAlloc = 0;
    sqlite3_stmt *pStmt = 0;
    char *zArg = unionStrdup(&rc, argv[3]);





    unionDequote(zArg);
    pStmt = unionPreparePrintf(&rc, pzErr, db,
        "SELECT * FROM (%z) ORDER BY 3", zArg
    );


    pTab = unionMalloc(&rc, sizeof(UnionTab));
    if( pTab ){
      assert( rc==SQLITE_OK );
      pTab->db = db;
      pTab->bSwarm = bSwarm;
      pTab->nMaxOpen = SWARMVTAB_MAX_OPEN;
    }


    if( bSwarm ){
      unionConfigureVtab(&rc, pTab, pStmt, argc-4, &argv[4], pzErr);
    }



    while( rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pStmt) ){
      const char *zDb = (const char*)sqlite3_column_text(pStmt, 0);
      const char *zTab = (const char*)sqlite3_column_text(pStmt, 1);
      sqlite3_int64 iMin = sqlite3_column_int64(pStmt, 2);
      sqlite3_int64 iMax = sqlite3_column_int64(pStmt, 3);
      UnionSrc *pSrc;


      if( nAlloc<=pTab->nSrc ){
        int nNew = nAlloc ? nAlloc*2 : 8;
        UnionSrc *aNew = (UnionSrc*)sqlite3_realloc64(
            pTab->aSrc, nNew*sizeof(UnionSrc)
        );
        if( aNew==0 ){
          rc = SQLITE_NOMEM;
          break;
        }else{
          memset(&aNew[pTab->nSrc], 0, (nNew-pTab->nSrc)*sizeof(UnionSrc));
          pTab->aSrc = aNew;
          nAlloc = nNew;
        }
      }


      if( iMax<iMin || (pTab->nSrc>0 && iMin<=pTab->aSrc[pTab->nSrc-1].iMax) ){
        *pzErr = sqlite3_mprintf("rowid range mismatch error");
        rc = SQLITE_ERROR;
      }

      if( rc==SQLITE_OK ){
        pSrc = &pTab->aSrc[pTab->nSrc++];
        pSrc->zTab = unionStrdup(&rc, zTab);
        pSrc->iMin = iMin;
        pSrc->iMax = iMax;
        if( bSwarm ){
          pSrc->zFile = unionStrdup(&rc, zDb);
        }else{
          pSrc->zDb = unionStrdup(&rc, zDb);
        }
        if( pTab->bHasContext ){
          const char *zContext = (const char*)sqlite3_column_text(pStmt, 4);
          pSrc->zContext = unionStrdup(&rc, zContext);
        }
      }
    }
    unionFinalize(&rc, pStmt, pzErr);
    pStmt = 0;




    if( rc==SQLITE_OK && pTab->nSrc==0 ){
      *pzErr = sqlite3_mprintf("no source tables configured");
      rc = SQLITE_ERROR;
    }




    if( rc==SQLITE_OK ){
      if( bSwarm ){
        rc = unionOpenDatabase(pTab, 0, pzErr);
      }else{
        rc = unionSourceCheck(pTab, pzErr);
      }
    }


    if( rc==SQLITE_OK ){
      UnionSrc *pSrc = &pTab->aSrc[0];
      sqlite3 *tdb = unionGetDb(pTab, pSrc);
      pStmt = unionPreparePrintf(&rc, pzErr, tdb, "SELECT "
          "'CREATE TABLE xyz('"
          "    || group_concat(quote(name) || ' ' || type, ', ')"
          "    || ')',"
          "max((cid+1) * (type='INTEGER' COLLATE nocase AND pk=1))-1 "
          "FROM pragma_table_info(%Q, ?)",
          pSrc->zTab, pSrc->zDb
      );
    }
    if( rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pStmt) ){
      const char *zDecl = (const char*)sqlite3_column_text(pStmt, 0);
      rc = sqlite3_declare_vtab(db, zDecl);
      pTab->iPK = sqlite3_column_int(pStmt, 1);
    }

    unionFinalize(&rc, pStmt, pzErr);
  }

  if( rc!=SQLITE_OK ){
    unionDisconnect((sqlite3_vtab*)pTab);
    pTab = 0;
  }

  *ppVtab = (sqlite3_vtab*)pTab;
  return rc;
}
