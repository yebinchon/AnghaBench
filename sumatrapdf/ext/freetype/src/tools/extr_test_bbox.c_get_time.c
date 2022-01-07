
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long CLOCKS_PER_SEC ;
 long clock () ;

__attribute__((used)) static long
  get_time( void )
  {
    return clock() * 10000L / CLOCKS_PER_SEC;
  }
