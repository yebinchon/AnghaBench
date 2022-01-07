
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ locked; scalar_t__ wantToLock; scalar_t__ sharable; TYPE_4__* db; TYPE_3__* pBt; TYPE_2__* pPrev; TYPE_1__* pNext; } ;
struct TYPE_11__ {int mutex; } ;
struct TYPE_10__ {TYPE_4__* db; } ;
struct TYPE_9__ {TYPE_4__* db; TYPE_3__* pBt; } ;
struct TYPE_8__ {TYPE_4__* db; TYPE_3__* pBt; } ;
typedef TYPE_5__ Btree ;


 int assert (int) ;
 int btreeLockCarefully (TYPE_5__*) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3BtreeEnter(Btree *p){




  assert( p->pNext==0 || p->pNext->pBt>p->pBt );
  assert( p->pPrev==0 || p->pPrev->pBt<p->pBt );
  assert( p->pNext==0 || p->pNext->db==p->db );
  assert( p->pPrev==0 || p->pPrev->db==p->db );
  assert( p->sharable || (p->pNext==0 && p->pPrev==0) );


  assert( !p->locked || p->wantToLock>0 );
  assert( p->sharable || p->wantToLock==0 );


  assert( sqlite3_mutex_held(p->db->mutex) );



  assert( (p->locked==0 && p->sharable) || p->pBt->db==p->db );

  if( !p->sharable ) return;
  p->wantToLock++;
  if( p->locked ) return;
  btreeLockCarefully(p);
}
