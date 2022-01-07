
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iTimeout; } ;


 int UNUSED_PARAMETER (void*) ;
 int errorMessage (char*,int) ;
 TYPE_1__ g ;
 int sqlite3_sleep (int) ;

__attribute__((used)) static int busyHandler(void *pCD, int count){
  UNUSED_PARAMETER(pCD);
  if( count*10>g.iTimeout ){
    if( g.iTimeout>0 ) errorMessage("timeout after %dms", g.iTimeout);
    return 0;
  }
  sqlite3_sleep(10);
  return 1;
}
