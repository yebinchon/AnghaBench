
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bInit; int crit; } ;


 int EnterCriticalSection (int *) ;
 scalar_t__ FALSE ;
 int TRACE (char*,int) ;
 int _LOCKTAB_LOCK ;
 int _unlock (int) ;
 TYPE_1__* lock_table ;
 int msvcrt_initialize_mlock (int) ;

void _lock( int locknum )
{
  TRACE( "(%d)\n", locknum );


  if( lock_table[ locknum ].bInit == FALSE )
  {

    _lock( _LOCKTAB_LOCK );


    if( lock_table[ locknum ].bInit == FALSE )
    {
      TRACE( ": creating lock #%d\n", locknum );
      msvcrt_initialize_mlock( locknum );
    }


    _unlock( _LOCKTAB_LOCK );
  }

  EnterCriticalSection( &(lock_table[ locknum ].crit) );
}
