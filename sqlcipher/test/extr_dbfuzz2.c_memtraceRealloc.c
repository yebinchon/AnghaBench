
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* xSize ) (void*) ;int (* xRoundup ) (int) ;void* (* xRealloc ) (void*,int) ;} ;


 int fprintf (scalar_t__,char*,int,int) ;
 TYPE_1__ memtraceBase ;
 int memtraceFree (void*) ;
 void* memtraceMalloc (int) ;
 scalar_t__ memtraceOut ;
 int stub1 (void*) ;
 int stub2 (int) ;
 int stub3 (void*) ;
 int stub4 (int) ;
 void* stub5 (void*,int) ;

__attribute__((used)) static void *memtraceRealloc(void *p, int n){
  if( p==0 ) return memtraceMalloc(n);
  if( n==0 ){
    memtraceFree(p);
    return 0;
  }
  if( memtraceOut ){
    fprintf(memtraceOut, "MEMTRACE: resize %d -> %d bytes\n",
            memtraceBase.xSize(p), memtraceBase.xRoundup(n));
  }
  return memtraceBase.xRealloc(p, n);
}
