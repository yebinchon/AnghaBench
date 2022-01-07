
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_4__ {scalar_t__ n; scalar_t__ nAlloc; scalar_t__ a; } ;
typedef TYPE_1__ lsm1_vblob ;


 int lsm1VblobEnlargeAndAppend (TYPE_1__*,int const*,scalar_t__) ;
 int memcpy (scalar_t__,int const*,scalar_t__) ;

__attribute__((used)) static void lsm1VblobAppend(lsm1_vblob *p, const u8 *pData, u32 N){
  sqlite3_int64 n = p->n;
  if( n+N>p->nAlloc ){
    lsm1VblobEnlargeAndAppend(p, pData, N);
  }else{
    p->n += N;
    memcpy(p->a+n, pData, N);
  }
}
