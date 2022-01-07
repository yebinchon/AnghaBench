
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_7__ {int zClassName; } ;
typedef TYPE_1__ fuzzer_vtab ;
struct TYPE_8__ {int zFrom; int zTo; int rCost; int iRuleset; void* nTo; void* nFrom; } ;
typedef TYPE_2__ fuzzer_rule ;
typedef void* fuzzer_len ;


 int FUZZER_MX_COST ;
 int FUZZER_MX_LENGTH ;
 scalar_t__ FUZZER_MX_RULEID ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (int,char const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3_column_int (int *,int) ;
 scalar_t__ sqlite3_column_int64 (int *,int ) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 TYPE_2__* sqlite3_malloc64 (int) ;
 char* sqlite3_mprintf (char*,int ,scalar_t__) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int fuzzerLoadOneRule(
  fuzzer_vtab *p,
  sqlite3_stmt *pStmt,
  fuzzer_rule **ppRule,
  char **pzErr
){
  sqlite3_int64 iRuleset = sqlite3_column_int64(pStmt, 0);
  const char *zFrom = (const char *)sqlite3_column_text(pStmt, 1);
  const char *zTo = (const char *)sqlite3_column_text(pStmt, 2);
  int nCost = sqlite3_column_int(pStmt, 3);

  int rc = SQLITE_OK;
  int nFrom;
  int nTo;
  fuzzer_rule *pRule = 0;

  if( zFrom==0 ) zFrom = "";
  if( zTo==0 ) zTo = "";
  nFrom = (int)strlen(zFrom);
  nTo = (int)strlen(zTo);


  if( strcmp(zFrom, zTo)==0 ){
    *ppRule = 0;
    return SQLITE_OK;
  }

  if( nCost<=0 || nCost>FUZZER_MX_COST ){
    *pzErr = sqlite3_mprintf("%s: cost must be between 1 and %d",
        p->zClassName, FUZZER_MX_COST
    );
    rc = SQLITE_ERROR;
  }else
  if( nFrom>FUZZER_MX_LENGTH || nTo>FUZZER_MX_LENGTH ){
    *pzErr = sqlite3_mprintf("%s: maximum string length is %d",
        p->zClassName, FUZZER_MX_LENGTH
    );
    rc = SQLITE_ERROR;
  }else
  if( iRuleset<0 || iRuleset>FUZZER_MX_RULEID ){
    *pzErr = sqlite3_mprintf("%s: ruleset must be between 0 and %d",
        p->zClassName, FUZZER_MX_RULEID
    );
    rc = SQLITE_ERROR;
  }else{

    pRule = sqlite3_malloc64( sizeof(*pRule) + nFrom + nTo );
    if( pRule==0 ){
      rc = SQLITE_NOMEM;
    }else{
      memset(pRule, 0, sizeof(*pRule));
      pRule->zFrom = pRule->zTo;
      pRule->zFrom += nTo + 1;
      pRule->nFrom = (fuzzer_len)nFrom;
      memcpy(pRule->zFrom, zFrom, nFrom+1);
      memcpy(pRule->zTo, zTo, nTo+1);
      pRule->nTo = (fuzzer_len)nTo;
      pRule->rCost = nCost;
      pRule->iRuleset = (int)iRuleset;
    }
  }

  *ppRule = pRule;
  return rc;
}
