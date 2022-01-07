
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* zParentColumn; struct TYPE_5__* zIdColumn; struct TYPE_5__* zTableName; struct TYPE_5__* zSelf; struct TYPE_5__* zDb; } ;
typedef TYPE_1__ closure_vtab ;


 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void closureFree(closure_vtab *p){
  if( p ){
    sqlite3_free(p->zDb);
    sqlite3_free(p->zSelf);
    sqlite3_free(p->zTableName);
    sqlite3_free(p->zIdColumn);
    sqlite3_free(p->zParentColumn);
    memset(p, 0, sizeof(*p));
    sqlite3_free(p);
  }
}
