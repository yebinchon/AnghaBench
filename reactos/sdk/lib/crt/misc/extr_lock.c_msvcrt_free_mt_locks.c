
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bInit; } ;


 int TRACE (char*) ;
 int _TOTAL_LOCKS ;
 TYPE_1__* lock_table ;
 int msvcrt_uninitialize_mlock (int) ;

void msvcrt_free_mt_locks(void)
{
  int i;

  TRACE(": uninitializing all mtlocks\n" );


  for( i=0; i < _TOTAL_LOCKS; i++ )
  {
    if( lock_table[ i ].bInit )
    {
      msvcrt_uninitialize_mlock( i );
    }
  }
}
