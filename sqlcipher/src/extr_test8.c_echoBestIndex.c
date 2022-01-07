
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sqlite3_index_constraint_usage {int argvIndex; int omit; } ;
struct sqlite3_index_constraint {int iColumn; int op; int usable; } ;
typedef int sqlite3_vtab ;
typedef int sqlite3_stmt ;
struct TYPE_9__ {int nConstraint; int nOrderBy; int orderByConsumed; char* idxStr; int needToFreeIdxStr; double estimatedCost; int idxNum; TYPE_1__* aOrderBy; struct sqlite3_index_constraint_usage* aConstraintUsage; struct sqlite3_index_constraint* aConstraint; } ;
typedef TYPE_2__ sqlite3_index_info ;
struct TYPE_10__ {char* zTableName; char** aCol; int * interp; scalar_t__* aIndex; int db; } ;
typedef TYPE_3__ echo_vtab ;
typedef int Tcl_Interp ;
struct TYPE_8__ {size_t iColumn; scalar_t__ desc; } ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int TCL_GLOBAL_ONLY ;
 scalar_t__ Tcl_GetVar (int *,char*,int ) ;
 int appendToEchoModule (int *,char*) ;
 double atof (scalar_t__) ;
 char* echoSelectList (TYPE_3__*,TYPE_2__*) ;
 int hashString (char*) ;
 scalar_t__ simulateVtabError (TYPE_3__*,char*) ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,...) ;
 int sqlite3_prepare (int ,char*,int,int **,int ) ;
 int sqlite3_step (int *) ;
 int string_concat (char**,char*,int,int*) ;

__attribute__((used)) static int echoBestIndex(sqlite3_vtab *tab, sqlite3_index_info *pIdxInfo){
  int ii;
  char *zQuery = 0;
  char *zCol = 0;
  char *zNew;
  int nArg = 0;
  const char *zSep = "WHERE";
  echo_vtab *pVtab = (echo_vtab *)tab;
  sqlite3_stmt *pStmt = 0;
  Tcl_Interp *interp = pVtab->interp;

  int nRow = 0;
  int useIdx = 0;
  int rc = SQLITE_OK;
  int useCost = 0;
  double cost = 0;
  int isIgnoreUsable = 0;
  if( Tcl_GetVar(interp, "echo_module_ignore_usable", TCL_GLOBAL_ONLY) ){
    isIgnoreUsable = 1;
  }

  if( simulateVtabError(pVtab, "xBestIndex") ){
    return SQLITE_ERROR;
  }






  if( Tcl_GetVar(interp, "echo_module_cost", TCL_GLOBAL_ONLY) ){
    cost = atof(Tcl_GetVar(interp, "echo_module_cost", TCL_GLOBAL_ONLY));
    useCost = 1;
  } else {
    zQuery = sqlite3_mprintf("SELECT count(*) FROM %Q", pVtab->zTableName);
    if( !zQuery ){
      return SQLITE_NOMEM;
    }
    rc = sqlite3_prepare(pVtab->db, zQuery, -1, &pStmt, 0);
    sqlite3_free(zQuery);
    if( rc!=SQLITE_OK ){
      return rc;
    }
    sqlite3_step(pStmt);
    nRow = sqlite3_column_int(pStmt, 0);
    rc = sqlite3_finalize(pStmt);
    if( rc!=SQLITE_OK ){
      return rc;
    }
  }

  zCol = echoSelectList(pVtab, pIdxInfo);
  if( !zCol ) return SQLITE_NOMEM;
  zQuery = sqlite3_mprintf("SELECT rowid%z FROM %Q", zCol, pVtab->zTableName);
  if( !zQuery ) return SQLITE_NOMEM;

  for(ii=0; ii<pIdxInfo->nConstraint; ii++){
    const struct sqlite3_index_constraint *pConstraint;
    struct sqlite3_index_constraint_usage *pUsage;
    int iCol;

    pConstraint = &pIdxInfo->aConstraint[ii];
    pUsage = &pIdxInfo->aConstraintUsage[ii];

    if( !isIgnoreUsable && !pConstraint->usable ) continue;

    iCol = pConstraint->iColumn;
    if( iCol<0 || pVtab->aIndex[iCol] ){
      char *zNewCol = iCol>=0 ? pVtab->aCol[iCol] : "rowid";
      char *zOp = 0;
      useIdx = 1;
      switch( pConstraint->op ){
        case 136:
          zOp = "="; break;
        case 130:
          zOp = "<"; break;
        case 133:
          zOp = ">"; break;
        case 132:
          zOp = "<="; break;
        case 135:
          zOp = ">="; break;
        case 129:







          zOp = "LIKE"; break;
        case 131:
          zOp = "like"; break;
        case 134:
          zOp = "glob"; break;
        case 128:
          zOp = "regexp"; break;
      }
      if( zOp ){
        if( zOp[0]=='L' ){
          zNew = sqlite3_mprintf(" %s %s LIKE (SELECT '%%'||?||'%%')",
              zSep, zNewCol);
        } else {
          zNew = sqlite3_mprintf(" %s %s %s ?", zSep, zNewCol, zOp);
        }
        string_concat(&zQuery, zNew, 1, &rc);
        zSep = "AND";
        pUsage->argvIndex = ++nArg;
        pUsage->omit = 1;
      }
    }
  }





  if( pIdxInfo->nOrderBy==1 && (
        pIdxInfo->aOrderBy->iColumn<0 ||
        pVtab->aIndex[pIdxInfo->aOrderBy->iColumn]) ){
    int iCol = pIdxInfo->aOrderBy->iColumn;
    char *zNewCol = iCol>=0 ? pVtab->aCol[iCol] : "rowid";
    char *zDir = pIdxInfo->aOrderBy->desc?"DESC":"ASC";
    zNew = sqlite3_mprintf(" ORDER BY %s %s", zNewCol, zDir);
    string_concat(&zQuery, zNew, 1, &rc);
    pIdxInfo->orderByConsumed = 1;
  }

  appendToEchoModule(pVtab->interp, "xBestIndex");;
  appendToEchoModule(pVtab->interp, zQuery);

  if( !zQuery ){
    return rc;
  }
  pIdxInfo->idxNum = hashString(zQuery);
  pIdxInfo->idxStr = zQuery;
  pIdxInfo->needToFreeIdxStr = 1;
  if( useCost ){
    pIdxInfo->estimatedCost = cost;
  }else if( useIdx ){

    for( ii=0; ii<(sizeof(int)*8)-1; ii++ ){
      if( nRow & (1<<ii) ){
        pIdxInfo->estimatedCost = (double)ii;
      }
    }
  }else{
    pIdxInfo->estimatedCost = (double)nRow;
  }
  return rc;
}
