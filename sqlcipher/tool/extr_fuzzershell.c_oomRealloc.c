
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* (* xRealloc ) (void*,int) ;} ;
struct TYPE_4__ {int iOomCntdown; scalar_t__ nOomFault; TYPE_1__ sOrigMem; int bOomOnce; scalar_t__ bOomEnable; } ;


 TYPE_2__ g ;
 int oomFault () ;
 void* stub1 (void*,int) ;

__attribute__((used)) static void *oomRealloc(void *pOld, int nByte){
  if( nByte>0 && g.bOomEnable && g.iOomCntdown>0 ){
    g.iOomCntdown--;
    if( g.iOomCntdown==0 ){
      if( g.nOomFault==0 ) oomFault();
      g.nOomFault++;
      if( !g.bOomOnce ) g.iOomCntdown = 1;
      return 0;
    }
  }
  return g.sOrigMem.xRealloc(pOld, nByte);
}
