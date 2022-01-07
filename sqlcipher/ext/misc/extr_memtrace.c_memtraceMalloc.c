
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* xRoundup ) (int) ;void* (* xMalloc ) (int) ;} ;


 int fprintf (scalar_t__,char*,int) ;
 TYPE_1__ memtraceBase ;
 scalar_t__ memtraceOut ;
 int stub1 (int) ;
 int stub2 (int) ;
 void* stub3 (int) ;

__attribute__((used)) static void *memtraceMalloc(int n){
  if( memtraceOut ){
    fprintf(memtraceOut, "MEMTRACE: allocate %d bytes\n",
            memtraceBase.xRoundup(n));
  }
  return memtraceBase.xMalloc(n);
}
