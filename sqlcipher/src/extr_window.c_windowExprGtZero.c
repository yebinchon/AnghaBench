
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_5__ {int enc; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_6__ {TYPE_1__* db; } ;
typedef TYPE_2__ Parse ;
typedef int Expr ;


 int SQLITE_AFF_NUMERIC ;
 int sqlite3ValueFree (int *) ;
 int sqlite3ValueFromExpr (TYPE_1__*,int *,int ,int ,int **) ;
 scalar_t__ sqlite3_value_int (int *) ;

__attribute__((used)) static int windowExprGtZero(Parse *pParse, Expr *pExpr){
  int ret = 0;
  sqlite3 *db = pParse->db;
  sqlite3_value *pVal = 0;
  sqlite3ValueFromExpr(db, pExpr, db->enc, SQLITE_AFF_NUMERIC, &pVal);
  if( pVal && sqlite3_value_int(pVal)>0 ){
    ret = 1;
  }
  sqlite3ValueFree(pVal);
  return ret;
}
