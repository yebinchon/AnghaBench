
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pBt; } ;
struct TYPE_7__ {int optimalReserve; } ;
typedef TYPE_2__ Btree ;


 int sqlite3BtreeEnter (TYPE_2__*) ;
 int sqlite3BtreeGetReserveNoMutex (TYPE_2__*) ;
 int sqlite3BtreeLeave (TYPE_2__*) ;

int sqlite3BtreeGetOptimalReserve(Btree *p){
  int n;
  sqlite3BtreeEnter(p);
  n = sqlite3BtreeGetReserveNoMutex(p);



  sqlite3BtreeLeave(p);
  return n;
}
