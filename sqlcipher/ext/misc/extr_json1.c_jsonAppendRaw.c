
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ nUsed; scalar_t__ nAlloc; scalar_t__ zBuf; } ;
typedef TYPE_1__ JsonString ;


 scalar_t__ jsonGrow (TYPE_1__*,scalar_t__) ;
 int memcpy (scalar_t__,char const*,scalar_t__) ;

__attribute__((used)) static void jsonAppendRaw(JsonString *p, const char *zIn, u32 N){
  if( (N+p->nUsed >= p->nAlloc) && jsonGrow(p,N)!=0 ) return;
  memcpy(p->zBuf+p->nUsed, zIn, N);
  p->nUsed += N;
}
