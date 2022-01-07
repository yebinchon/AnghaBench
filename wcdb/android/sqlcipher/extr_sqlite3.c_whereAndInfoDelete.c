
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {int wc; } ;
typedef TYPE_1__ WhereAndInfo ;


 int sqlite3DbFree (int *,TYPE_1__*) ;
 int sqlite3WhereClauseClear (int *) ;

__attribute__((used)) static void whereAndInfoDelete(sqlite3 *db, WhereAndInfo *p){
  sqlite3WhereClauseClear(&p->wc);
  sqlite3DbFree(db, p);
}
