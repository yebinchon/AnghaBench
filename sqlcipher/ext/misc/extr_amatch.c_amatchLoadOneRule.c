
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_7__ {scalar_t__ rSub; scalar_t__ rIns; scalar_t__ rDel; int zClassName; } ;
typedef TYPE_1__ amatch_vtab ;
struct TYPE_8__ {int iLang; scalar_t__ rCost; void* nTo; int * zTo; int * zFrom; void* nFrom; } ;
typedef TYPE_2__ amatch_rule ;
typedef void* amatch_len ;
typedef scalar_t__ amatch_cost ;


 scalar_t__ AMATCH_MX_COST ;
 scalar_t__ AMATCH_MX_LANGID ;
 int AMATCH_MX_LENGTH ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (int *,char const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ sqlite3_column_int (int *,int) ;
 scalar_t__ sqlite3_column_int64 (int *,int ) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 TYPE_2__* sqlite3_malloc64 (int) ;
 char* sqlite3_mprintf (char*,int ,scalar_t__) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int amatchLoadOneRule(
  amatch_vtab *p,
  sqlite3_stmt *pStmt,
  amatch_rule **ppRule,
  char **pzErr
){
  sqlite3_int64 iLang = sqlite3_column_int64(pStmt, 0);
  const char *zFrom = (const char *)sqlite3_column_text(pStmt, 1);
  const char *zTo = (const char *)sqlite3_column_text(pStmt, 2);
  amatch_cost rCost = sqlite3_column_int(pStmt, 3);

  int rc = SQLITE_OK;
  int nFrom;
  int nTo;
  amatch_rule *pRule = 0;

  if( zFrom==0 ) zFrom = "";
  if( zTo==0 ) zTo = "";
  nFrom = (int)strlen(zFrom);
  nTo = (int)strlen(zTo);


  if( strcmp(zFrom, zTo)==0 ){
    if( zFrom[0]=='?' && zFrom[1]==0 ){
      if( p->rSub==0 || p->rSub>rCost ) p->rSub = rCost;
    }
    *ppRule = 0;
    return SQLITE_OK;
  }

  if( rCost<=0 || rCost>AMATCH_MX_COST ){
    *pzErr = sqlite3_mprintf("%s: cost must be between 1 and %d",
        p->zClassName, AMATCH_MX_COST
    );
    rc = SQLITE_ERROR;
  }else
  if( nFrom>AMATCH_MX_LENGTH || nTo>AMATCH_MX_LENGTH ){
    *pzErr = sqlite3_mprintf("%s: maximum string length is %d",
        p->zClassName, AMATCH_MX_LENGTH
    );
    rc = SQLITE_ERROR;
  }else
  if( iLang<0 || iLang>AMATCH_MX_LANGID ){
    *pzErr = sqlite3_mprintf("%s: iLang must be between 0 and %d",
        p->zClassName, AMATCH_MX_LANGID
    );
    rc = SQLITE_ERROR;
  }else
  if( strcmp(zFrom,"")==0 && strcmp(zTo,"?")==0 ){
    if( p->rIns==0 || p->rIns>rCost ) p->rIns = rCost;
  }else
  if( strcmp(zFrom,"?")==0 && strcmp(zTo,"")==0 ){
    if( p->rDel==0 || p->rDel>rCost ) p->rDel = rCost;
  }else
  {
    pRule = sqlite3_malloc64( sizeof(*pRule) + nFrom + nTo );
    if( pRule==0 ){
      rc = SQLITE_NOMEM;
    }else{
      memset(pRule, 0, sizeof(*pRule));
      pRule->zFrom = &pRule->zTo[nTo+1];
      pRule->nFrom = (amatch_len)nFrom;
      memcpy(pRule->zFrom, zFrom, nFrom+1);
      memcpy(pRule->zTo, zTo, nTo+1);
      pRule->nTo = (amatch_len)nTo;
      pRule->rCost = rCost;
      pRule->iLang = (int)iLang;
    }
  }

  *ppRule = pRule;
  return rc;
}
