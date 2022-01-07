
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_mutex ;
struct TYPE_3__ {int * (* xMutexAlloc ) (int) ;} ;
struct TYPE_4__ {TYPE_1__ mutex; } ;


 int * stub1 (int) ;
 TYPE_2__ wrapped ;

__attribute__((used)) static sqlite3_mutex *wrMutexAlloc(int e){
  return wrapped.mutex.xMutexAlloc(e);
}
