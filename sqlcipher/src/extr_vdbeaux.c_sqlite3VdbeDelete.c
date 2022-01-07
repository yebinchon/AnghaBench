
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* pVdbe; int mutex; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_11__ {TYPE_2__* db; int magic; TYPE_1__* pPrev; struct TYPE_11__* pNext; } ;
typedef TYPE_3__ Vdbe ;
struct TYPE_9__ {TYPE_3__* pNext; } ;


 int VDBE_MAGIC_DEAD ;
 int assert (int) ;
 int sqlite3DbFreeNN (TYPE_2__*,TYPE_3__*) ;
 int sqlite3VdbeClearObject (TYPE_2__*,TYPE_3__*) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3VdbeDelete(Vdbe *p){
  sqlite3 *db;

  assert( p!=0 );
  db = p->db;
  assert( sqlite3_mutex_held(db->mutex) );
  sqlite3VdbeClearObject(db, p);
  if( p->pPrev ){
    p->pPrev->pNext = p->pNext;
  }else{
    assert( db->pVdbe==p );
    db->pVdbe = p->pNext;
  }
  if( p->pNext ){
    p->pNext->pPrev = p->pPrev;
  }
  p->magic = VDBE_MAGIC_DEAD;
  p->db = 0;
  sqlite3DbFreeNN(db, p);
}
