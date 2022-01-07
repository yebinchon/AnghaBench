
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nDb; TYPE_3__* aDb; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_6__ {int lockMask; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_7__ {scalar_t__ pBt; } ;
typedef TYPE_3__ Db ;


 scalar_t__ ALWAYS (int) ;
 scalar_t__ DbMaskAllZero (int ) ;
 scalar_t__ DbMaskTest (int ,int) ;
 int sqlite3BtreeEnter (scalar_t__) ;

void sqlite3VdbeEnter(Vdbe *p){
  int i;
  sqlite3 *db;
  Db *aDb;
  int nDb;
  if( DbMaskAllZero(p->lockMask) ) return;
  db = p->db;
  aDb = db->aDb;
  nDb = db->nDb;
  for(i=0; i<nDb; i++){
    if( i!=1 && DbMaskTest(p->lockMask,i) && ALWAYS(aDb[i].pBt!=0) ){
      sqlite3BtreeEnter(aDb[i].pBt);
    }
  }
}
