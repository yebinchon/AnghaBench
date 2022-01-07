
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_uint64 ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_4__ {scalar_t__ n; scalar_t__ nAlloc; scalar_t__ a; } ;
typedef TYPE_1__ lsm1_vblob ;


 scalar_t__ lsm1PutVarint64 (scalar_t__,int ) ;
 scalar_t__ lsm1VblobEnlarge (TYPE_1__*,int) ;

__attribute__((used)) static void lsm1VblobAppendVarint(lsm1_vblob *p, sqlite3_uint64 x){
  sqlite3_int64 n = p->n;
  if( n+9>p->nAlloc && lsm1VblobEnlarge(p, 9) ) return;
  p->n += lsm1PutVarint64(p->a+p->n, x);
}
