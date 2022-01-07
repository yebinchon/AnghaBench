
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sleep (int) ;
 int test_and_set () ;

int lock_list()
{
  int count = 1;

  while( !test_and_set() )
    {
      sleep( 1 );
      count++;
    }

  return count;
}
