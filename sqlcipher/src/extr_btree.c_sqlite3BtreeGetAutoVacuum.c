
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pBt; } ;
struct TYPE_6__ {int incrVacuum; int autoVacuum; } ;
typedef TYPE_2__ Btree ;


 int BTREE_AUTOVACUUM_FULL ;
 int BTREE_AUTOVACUUM_INCR ;
 int BTREE_AUTOVACUUM_NONE ;
 int sqlite3BtreeEnter (TYPE_2__*) ;
 int sqlite3BtreeLeave (TYPE_2__*) ;

int sqlite3BtreeGetAutoVacuum(Btree *p){



  int rc;
  sqlite3BtreeEnter(p);
  rc = (
    (!p->pBt->autoVacuum)?BTREE_AUTOVACUUM_NONE:
    (!p->pBt->incrVacuum)?BTREE_AUTOVACUUM_FULL:
    BTREE_AUTOVACUUM_INCR
  );
  sqlite3BtreeLeave(p);
  return rc;

}
