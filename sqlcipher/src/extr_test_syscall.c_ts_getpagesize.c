
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pgsz; } ;


 TYPE_1__ gSyscall ;

__attribute__((used)) static int ts_getpagesize(void){
  return gSyscall.pgsz;
}
