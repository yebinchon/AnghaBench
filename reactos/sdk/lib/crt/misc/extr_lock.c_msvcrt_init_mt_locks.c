
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRACE (char*) ;
 int _LOCKTAB_LOCK ;
 int _TOTAL_LOCKS ;
 int msvcrt_initialize_mlock (int ) ;
 int msvcrt_mlock_set_entry_initialized (int,int ) ;

void msvcrt_init_mt_locks(void)
{
  int i;

  TRACE( "initializing mtlocks\n" );


  for( i=0; i < _TOTAL_LOCKS; i++ )
  {
    msvcrt_mlock_set_entry_initialized( i, FALSE );
  }


  msvcrt_initialize_mlock( _LOCKTAB_LOCK );
}
