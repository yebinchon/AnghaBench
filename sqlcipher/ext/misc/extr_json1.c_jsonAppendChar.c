
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nUsed; scalar_t__ nAlloc; char* zBuf; } ;
typedef TYPE_1__ JsonString ;


 scalar_t__ jsonGrow (TYPE_1__*,int) ;

__attribute__((used)) static void jsonAppendChar(JsonString *p, char c){
  if( p->nUsed>=p->nAlloc && jsonGrow(p,1)!=0 ) return;
  p->zBuf[p->nUsed++] = c;
}
