
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_4__ {void* (* xMalloc ) (int) ;} ;
struct TYPE_5__ {TYPE_1__ m; scalar_t__ bMemstat; } ;


 int EIGHT_BYTE_ALIGNMENT (void*) ;
 int assert (int ) ;
 int mallocWithAlarm (int,void**) ;
 TYPE_3__ mem0 ;
 TYPE_2__ sqlite3GlobalConfig ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 void* stub1 (int) ;

void *sqlite3Malloc(u64 n){
  void *p;
  if( n==0 || n>=0x7fffff00 ){





    p = 0;
  }else if( sqlite3GlobalConfig.bMemstat ){
    sqlite3_mutex_enter(mem0.mutex);
    mallocWithAlarm((int)n, &p);
    sqlite3_mutex_leave(mem0.mutex);
  }else{
    p = sqlite3GlobalConfig.m.xMalloc((int)n);
  }
  assert( EIGHT_BYTE_ALIGNMENT(p) );
  return p;
}
