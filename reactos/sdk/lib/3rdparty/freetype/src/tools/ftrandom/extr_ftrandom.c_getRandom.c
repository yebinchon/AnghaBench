
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int random () ;

__attribute__((used)) static int
  getRandom( int low,
             int high )
  {
    if ( low - high < 0x10000L )
      return low + ( ( random() >> 8 ) % ( high + 1 - low ) );

    return low + ( random() % ( high + 1 - low ) );
  }
