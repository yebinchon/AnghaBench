
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nExpr; } ;
struct TYPE_8__ {TYPE_1__* db; } ;
struct TYPE_7__ {int* aLimit; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ ExprList ;


 size_t SQLITE_LIMIT_COLUMN ;
 int sqlite3ErrorMsg (TYPE_2__*,char*,char const*) ;
 int testcase (int ) ;

void sqlite3ExprListCheckLength(
  Parse *pParse,
  ExprList *pEList,
  const char *zObject
){
  int mx = pParse->db->aLimit[SQLITE_LIMIT_COLUMN];
  testcase( pEList && pEList->nExpr==mx );
  testcase( pEList && pEList->nExpr==mx+1 );
  if( pEList && pEList->nExpr>mx ){
    sqlite3ErrorMsg(pParse, "too many columns in %s", zObject);
  }
}
