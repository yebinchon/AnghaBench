
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pParse; int xExprCallback; int xSelectCallback2; int xSelectCallback; } ;
typedef TYPE_1__ Walker ;
typedef int Select ;
typedef int Parse ;


 int selectAddSubqueryTypeInfo ;
 int sqlite3ExprWalkNoop ;
 int sqlite3SelectWalkNoop ;
 int sqlite3WalkSelect (TYPE_1__*,int *) ;

__attribute__((used)) static void sqlite3SelectAddTypeInfo(Parse *pParse, Select *pSelect){

  Walker w;
  w.xSelectCallback = sqlite3SelectWalkNoop;
  w.xSelectCallback2 = selectAddSubqueryTypeInfo;
  w.xExprCallback = sqlite3ExprWalkNoop;
  w.pParse = pParse;
  sqlite3WalkSelect(&w, pSelect);

}
