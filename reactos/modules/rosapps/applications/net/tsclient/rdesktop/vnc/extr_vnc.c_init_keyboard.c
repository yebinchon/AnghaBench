
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIRST_MODIFIER ;
 int LAST_MODIFIER ;
 scalar_t__* keystate ;
 int xkeymap_init () ;

void
init_keyboard()
{
 int i;
 for (i = 0; i < LAST_MODIFIER - FIRST_MODIFIER; i++)
  keystate[i] = 0;

 xkeymap_init();
}
