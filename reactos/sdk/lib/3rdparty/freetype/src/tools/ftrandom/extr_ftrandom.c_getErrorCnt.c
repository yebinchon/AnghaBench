
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fontlist {double len; } ;


 scalar_t__ error_count ;
 double error_fraction ;

__attribute__((used)) static unsigned int
  getErrorCnt( struct fontlist* item )
  {
    if ( error_count == 0 && error_fraction == 0.0 )
      return 0;

    return error_count + (unsigned int)( error_fraction * item->len );
  }
