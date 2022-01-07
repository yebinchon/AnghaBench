
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* db; } ;
struct TYPE_5__ {int* aLimit; } ;
typedef TYPE_2__ Parse ;


 int SQLITE_ERROR ;
 size_t SQLITE_LIMIT_EXPR_DEPTH ;
 int SQLITE_OK ;
 int sqlite3ErrorMsg (TYPE_2__*,char*,int) ;

int sqlite3ExprCheckHeight(Parse *pParse, int nHeight){
  int rc = SQLITE_OK;
  int mxHeight = pParse->db->aLimit[SQLITE_LIMIT_EXPR_DEPTH];
  if( nHeight>mxHeight ){
    sqlite3ErrorMsg(pParse,
       "Expression tree is too large (maximum depth %d)", mxHeight
    );
    rc = SQLITE_ERROR;
  }
  return rc;
}
