
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ eFrmType; scalar_t__ eStart; scalar_t__ eEnd; scalar_t__ eExclude; int pOrderBy; int pPartition; int pEnd; int pStart; } ;
typedef TYPE_1__ Window ;
typedef int Parse ;


 scalar_t__ sqlite3ExprCompare (int *,int ,int ,int) ;
 scalar_t__ sqlite3ExprListCompare (int ,int ,int) ;

int sqlite3WindowCompare(Parse *pParse, Window *p1, Window *p2){
  if( p1->eFrmType!=p2->eFrmType ) return 1;
  if( p1->eStart!=p2->eStart ) return 1;
  if( p1->eEnd!=p2->eEnd ) return 1;
  if( p1->eExclude!=p2->eExclude ) return 1;
  if( sqlite3ExprCompare(pParse, p1->pStart, p2->pStart, -1) ) return 1;
  if( sqlite3ExprCompare(pParse, p1->pEnd, p2->pEnd, -1) ) return 1;
  if( sqlite3ExprListCompare(p1->pPartition, p2->pPartition, -1) ) return 1;
  if( sqlite3ExprListCompare(p1->pOrderBy, p2->pOrderBy, -1) ) return 1;
  return 0;
}
