
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int* aBitmap; int* aHash; TYPE_2__** apSub; } ;
struct TYPE_5__ {size_t iSize; int iDivisor; TYPE_1__ u; } ;
typedef TYPE_2__ Bitvec ;


 size_t BITVEC_HASH (int ) ;
 scalar_t__ BITVEC_NBIT ;
 size_t BITVEC_NINT ;
 size_t BITVEC_SZELEM ;
 int assert (int) ;

int sqlite3BitvecTestNotNull(Bitvec *p, u32 i){
  assert( p!=0 );
  i--;
  if( i>=p->iSize ) return 0;
  while( p->iDivisor ){
    u32 bin = i/p->iDivisor;
    i = i%p->iDivisor;
    p = p->u.apSub[bin];
    if (!p) {
      return 0;
    }
  }
  if( p->iSize<=BITVEC_NBIT ){
    return (p->u.aBitmap[i/BITVEC_SZELEM] & (1<<(i&(BITVEC_SZELEM-1))))!=0;
  } else{
    u32 h = BITVEC_HASH(i++);
    while( p->u.aHash[h] ){
      if( p->u.aHash[h]==i ) return 1;
      h = (h+1) % BITVEC_NINT;
    }
    return 0;
  }
}
