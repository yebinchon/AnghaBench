
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int interp; } ;
typedef TYPE_1__ tclvar_vtab ;
struct sqlite3_index_constraint_usage {int argvIndex; int omit; } ;
struct sqlite3_index_constraint {scalar_t__ op; int iColumn; scalar_t__ usable; } ;
typedef int sqlite3_vtab ;
struct TYPE_5__ {int nConstraint; char* idxStr; int needToFreeIdxStr; struct sqlite3_index_constraint_usage* aConstraintUsage; struct sqlite3_index_constraint* aConstraint; } ;
typedef TYPE_2__ sqlite3_index_info ;


 scalar_t__ SQLITE_INDEX_CONSTRAINT_EQ ;
 scalar_t__ SQLITE_INDEX_CONSTRAINT_GLOB ;
 scalar_t__ SQLITE_INDEX_CONSTRAINT_LIKE ;
 scalar_t__ SQLITE_INDEX_CONSTRAINT_MATCH ;
 scalar_t__ SQLITE_INDEX_CONSTRAINT_REGEXP ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int TCLVAR_NAME_EQ ;
 int TCLVAR_NAME_MATCH ;
 int TCLVAR_VALUE_GLOB ;
 int TCLVAR_VALUE_LIKE ;
 int TCLVAR_VALUE_REGEXP ;
 char* sqlite3_malloc (int) ;
 scalar_t__ tclvarAddToIdxstr (char*,int ) ;
 void* tclvarSetOmit (int ) ;

__attribute__((used)) static int tclvarBestIndex(sqlite3_vtab *tab, sqlite3_index_info *pIdxInfo){
  tclvar_vtab *pTab = (tclvar_vtab*)tab;
  int ii;
  char *zStr = sqlite3_malloc(32);
  int iStr = 0;

  if( zStr==0 ) return SQLITE_NOMEM;
  zStr[0] = '\0';

  for(ii=0; ii<pIdxInfo->nConstraint; ii++){
    struct sqlite3_index_constraint const *pCons = &pIdxInfo->aConstraint[ii];
    struct sqlite3_index_constraint_usage *pUsage;

    pUsage = &pIdxInfo->aConstraintUsage[ii];
    if( pCons->usable ){

      if( pCons->op==SQLITE_INDEX_CONSTRAINT_EQ && pCons->iColumn==0 ){
        if( 0==tclvarAddToIdxstr(zStr, TCLVAR_NAME_EQ) ){
          pUsage->argvIndex = ++iStr;
          pUsage->omit = 0;
        }
      }


      if( pCons->op==SQLITE_INDEX_CONSTRAINT_MATCH && pCons->iColumn==0 ){
        if( 0==tclvarAddToIdxstr(zStr, TCLVAR_NAME_MATCH) ){
          pUsage->argvIndex = ++iStr;
          pUsage->omit = 1;
        }
      }


      if( pCons->op==SQLITE_INDEX_CONSTRAINT_GLOB && pCons->iColumn==2 ){
        if( 0==tclvarAddToIdxstr(zStr, TCLVAR_VALUE_GLOB) ){
          pUsage->argvIndex = ++iStr;
          pUsage->omit = tclvarSetOmit(pTab->interp);
        }
      }


      if( pCons->op==SQLITE_INDEX_CONSTRAINT_REGEXP && pCons->iColumn==2 ){
        if( 0==tclvarAddToIdxstr(zStr, TCLVAR_VALUE_REGEXP) ){
          pUsage->argvIndex = ++iStr;
          pUsage->omit = tclvarSetOmit(pTab->interp);
        }
      }


      if( pCons->op==SQLITE_INDEX_CONSTRAINT_LIKE && pCons->iColumn==2 ){
        if( 0==tclvarAddToIdxstr(zStr, TCLVAR_VALUE_LIKE) ){
          pUsage->argvIndex = ++iStr;
          pUsage->omit = tclvarSetOmit(pTab->interp);
        }
      }
    }
  }
  pIdxInfo->idxStr = zStr;
  pIdxInfo->needToFreeIdxStr = 1;

  return SQLITE_OK;
}
