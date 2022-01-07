
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* xSize ) (void*) ;int (* xFree ) (void*) ;} ;


 int fprintf (scalar_t__,char*,int) ;
 TYPE_1__ memtraceBase ;
 scalar_t__ memtraceOut ;
 int stub1 (void*) ;
 int stub2 (void*) ;
 int stub3 (void*) ;

__attribute__((used)) static void memtraceFree(void *p){
  if( p==0 ) return;
  if( memtraceOut ){
    fprintf(memtraceOut, "MEMTRACE: free %d bytes\n", memtraceBase.xSize(p));
  }
  memtraceBase.xFree(p);
}
