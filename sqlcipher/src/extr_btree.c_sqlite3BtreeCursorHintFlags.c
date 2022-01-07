
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int hints; } ;
typedef TYPE_1__ BtCursor ;


 unsigned int BTREE_BULKLOAD ;
 unsigned int BTREE_SEEK_EQ ;
 int assert (int) ;

void sqlite3BtreeCursorHintFlags(BtCursor *pCur, unsigned x){
  assert( x==BTREE_SEEK_EQ || x==BTREE_BULKLOAD || x==0 );
  pCur->hints = x;
}
