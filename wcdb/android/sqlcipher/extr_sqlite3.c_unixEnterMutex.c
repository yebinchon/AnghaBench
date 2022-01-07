
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_notheld (int ) ;
 int unixBigLock ;

__attribute__((used)) static void unixEnterMutex(void){
  assert( sqlite3_mutex_notheld(unixBigLock) );
  sqlite3_mutex_enter(unixBigLock);
}
