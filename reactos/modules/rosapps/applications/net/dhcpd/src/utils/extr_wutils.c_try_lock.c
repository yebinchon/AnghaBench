
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8b ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

u8b try_lock( u8b *key )
{
  if( *key == TRUE )
    return FALSE;
  return TRUE;
}
