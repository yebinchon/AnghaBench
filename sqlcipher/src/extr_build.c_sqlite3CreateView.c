
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_27__ {scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_28__ {char* z; int n; } ;
typedef TYPE_2__ Token ;
struct TYPE_29__ {int pCheck; int * pSelect; int pSchema; } ;
typedef TYPE_3__ Table ;
struct TYPE_30__ {scalar_t__ nVar; TYPE_2__ sLastToken; scalar_t__ nErr; TYPE_3__* pNewTable; TYPE_1__* db; } ;
typedef int Select ;
typedef TYPE_4__ Parse ;
typedef int ExprList ;
typedef int DbFixer ;


 int EXPRDUP_REDUCE ;
 scalar_t__ IN_RENAME_OBJECT ;
 int assert (int) ;
 int sqlite3EndTable (TYPE_4__*,int ,TYPE_2__*,int ,int ) ;
 int sqlite3ErrorMsg (TYPE_4__*,char*) ;
 int sqlite3ExprListDelete (TYPE_1__*,int *) ;
 int sqlite3ExprListDup (TYPE_1__*,int *,int ) ;
 int sqlite3FixInit (int *,TYPE_4__*,int,char*,TYPE_2__*) ;
 scalar_t__ sqlite3FixSelect (int *,int *) ;
 scalar_t__ sqlite3Isspace (char const) ;
 int sqlite3RenameExprlistUnmap (TYPE_4__*,int *) ;
 int sqlite3SchemaToIndex (TYPE_1__*,int ) ;
 int sqlite3SelectDelete (TYPE_1__*,int *) ;
 int * sqlite3SelectDup (TYPE_1__*,int *,int ) ;
 int sqlite3StartTable (TYPE_4__*,TYPE_2__*,TYPE_2__*,int,int,int ,int) ;
 int sqlite3TwoPartName (TYPE_4__*,TYPE_2__*,TYPE_2__*,TYPE_2__**) ;

void sqlite3CreateView(
  Parse *pParse,
  Token *pBegin,
  Token *pName1,
  Token *pName2,
  ExprList *pCNames,
  Select *pSelect,
  int isTemp,
  int noErr
){
  Table *p;
  int n;
  const char *z;
  Token sEnd;
  DbFixer sFix;
  Token *pName = 0;
  int iDb;
  sqlite3 *db = pParse->db;

  if( pParse->nVar>0 ){
    sqlite3ErrorMsg(pParse, "parameters are not allowed in views");
    goto create_view_fail;
  }
  sqlite3StartTable(pParse, pName1, pName2, isTemp, 1, 0, noErr);
  p = pParse->pNewTable;
  if( p==0 || pParse->nErr ) goto create_view_fail;
  sqlite3TwoPartName(pParse, pName1, pName2, &pName);
  iDb = sqlite3SchemaToIndex(db, p->pSchema);
  sqlite3FixInit(&sFix, pParse, iDb, "view", pName);
  if( sqlite3FixSelect(&sFix, pSelect) ) goto create_view_fail;






  if( IN_RENAME_OBJECT ){
    p->pSelect = pSelect;
    pSelect = 0;
  }else{
    p->pSelect = sqlite3SelectDup(db, pSelect, EXPRDUP_REDUCE);
  }
  p->pCheck = sqlite3ExprListDup(db, pCNames, EXPRDUP_REDUCE);
  if( db->mallocFailed ) goto create_view_fail;




  sEnd = pParse->sLastToken;
  assert( sEnd.z[0]!=0 || sEnd.n==0 );
  if( sEnd.z[0]!=';' ){
    sEnd.z += sEnd.n;
  }
  sEnd.n = 0;
  n = (int)(sEnd.z - pBegin->z);
  assert( n>0 );
  z = pBegin->z;
  while( sqlite3Isspace(z[n-1]) ){ n--; }
  sEnd.z = &z[n-1];
  sEnd.n = 1;


  sqlite3EndTable(pParse, 0, &sEnd, 0, 0);

create_view_fail:
  sqlite3SelectDelete(db, pSelect);
  if( IN_RENAME_OBJECT ){
    sqlite3RenameExprlistUnmap(pParse, pCNames);
  }
  sqlite3ExprListDelete(db, pCNames);
  return;
}
