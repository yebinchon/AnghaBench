
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCK_EXIT ;
 int UNLOCK_EXIT ;
 int __call_atexit () ;

void _cexit( void )
{
  LOCK_EXIT;
  __call_atexit();
  UNLOCK_EXIT;
}
