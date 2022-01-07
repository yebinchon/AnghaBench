
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {struct TYPE_3__* zLogName; struct TYPE_3__* zTableName; struct TYPE_3__* zThis; struct TYPE_3__* aCol; struct TYPE_3__* aIndex; } ;
typedef TYPE_1__ echo_vtab ;


 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int echoDestructor(sqlite3_vtab *pVtab){
  echo_vtab *p = (echo_vtab*)pVtab;
  sqlite3_free(p->aIndex);
  sqlite3_free(p->aCol);
  sqlite3_free(p->zThis);
  sqlite3_free(p->zTableName);
  sqlite3_free(p->zLogName);
  sqlite3_free(p);
  return 0;
}
