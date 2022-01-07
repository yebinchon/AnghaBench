
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ArraySize (char* const*) ;
 scalar_t__ PAGER_JOURNALMODE_DELETE ;
 int PAGER_JOURNALMODE_MEMORY ;
 int PAGER_JOURNALMODE_OFF ;
 int PAGER_JOURNALMODE_PERSIST ;
 int PAGER_JOURNALMODE_TRUNCATE ;
 int PAGER_JOURNALMODE_WAL ;
 int assert (int) ;

const char *sqlite3JournalModename(int eMode){
  static char * const azModeName[] = {
    "delete", "persist", "off", "truncate", "memory"

     , "wal"

  };
  assert( PAGER_JOURNALMODE_DELETE==0 );
  assert( PAGER_JOURNALMODE_PERSIST==1 );
  assert( PAGER_JOURNALMODE_OFF==2 );
  assert( PAGER_JOURNALMODE_TRUNCATE==3 );
  assert( PAGER_JOURNALMODE_MEMORY==4 );
  assert( PAGER_JOURNALMODE_WAL==5 );
  assert( eMode>=0 && eMode<=ArraySize(azModeName) );

  if( eMode==ArraySize(azModeName) ) return 0;
  return azModeName[eMode];
}
