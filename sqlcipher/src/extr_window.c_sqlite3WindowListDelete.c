
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {struct TYPE_4__* pNextWin; } ;
typedef TYPE_1__ Window ;


 int sqlite3WindowDelete (int *,TYPE_1__*) ;

void sqlite3WindowListDelete(sqlite3 *db, Window *p){
  while( p ){
    Window *pNext = p->pNextWin;
    sqlite3WindowDelete(db, p);
    p = pNext;
  }
}
