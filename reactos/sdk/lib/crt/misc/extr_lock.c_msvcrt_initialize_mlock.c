
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crit; } ;


 int InitializeCriticalSection (int *) ;
 int TRUE ;
 TYPE_1__* lock_table ;
 int msvcrt_mlock_set_entry_initialized (int,int ) ;

__attribute__((used)) static __inline void msvcrt_initialize_mlock( int locknum )
{
  InitializeCriticalSection( &(lock_table[ locknum ].crit) );
  msvcrt_mlock_set_entry_initialized( locknum, TRUE );
}
