
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_mutex ;
struct TYPE_2__ {int * mutex; } ;


 TYPE_1__ pcache1 ;

sqlite3_mutex *sqlite3Pcache1Mutex(void){
  return pcache1.mutex;
}
