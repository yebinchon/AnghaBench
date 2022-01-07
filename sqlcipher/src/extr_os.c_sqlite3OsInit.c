
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_NOMEM_BKPT ;
 int sqlite3_free (void*) ;
 void* sqlite3_malloc (int) ;
 int sqlite3_os_init () ;

int sqlite3OsInit(void){
  void *p = sqlite3_malloc(10);
  if( p==0 ) return SQLITE_NOMEM_BKPT;
  sqlite3_free(p);
  return sqlite3_os_init();
}
