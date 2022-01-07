
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_5__ {TYPE_1__* pRoot; } ;
struct TYPE_4__ {int iRowid; } ;
typedef TYPE_2__ Fts5Expr ;



i64 sqlite3Fts5ExprRowid(Fts5Expr *p){
  return p->pRoot->iRowid;
}
