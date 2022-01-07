
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ n; scalar_t__ nAlloc; int errNoMem; scalar_t__ a; } ;
typedef TYPE_1__ lsm1_vblob ;


 scalar_t__ sqlite3_msize (scalar_t__) ;
 scalar_t__ sqlite3_realloc64 (scalar_t__,scalar_t__) ;

__attribute__((used)) static int lsm1VblobEnlarge(lsm1_vblob *p, u32 N){
  if( p->n+N>p->nAlloc ){
    if( p->errNoMem ) return 1;
    p->nAlloc += N + (p->nAlloc ? p->nAlloc : N);
    p->a = sqlite3_realloc64(p->a, p->nAlloc);
    if( p->a==0 ){
      p->n = 0;
      p->nAlloc = 0;
      p->errNoMem = 1;
      return 1;
    }
    p->nAlloc = sqlite3_msize(p->a);
  }
  return 0;
}
