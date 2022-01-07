
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_4__ {scalar_t__ id; struct TYPE_4__* pAfter; struct TYPE_4__* pBefore; } ;
typedef TYPE_1__ closure_avl ;



__attribute__((used)) static closure_avl *closureAvlSearch(closure_avl *p, sqlite3_int64 id){
  while( p && id!=p->id ){
    p = (id<p->id) ? p->pBefore : p->pAfter;
  }
  return p;
}
