
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int BOOL ;


 scalar_t__ FIRST_MODIFIER ;
 scalar_t__ LAST_MODIFIER ;
 int * keystate ;

BOOL
get_key_state(unsigned int state, uint32 keysym)
{
 if (keysym >= FIRST_MODIFIER && keysym <= LAST_MODIFIER)
  return keystate[keysym - FIRST_MODIFIER];
 return 0;
}
