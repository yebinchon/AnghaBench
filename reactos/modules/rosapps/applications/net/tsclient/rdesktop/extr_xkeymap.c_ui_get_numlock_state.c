
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int RDPCLIENT ;


 int KBD_FLAG_NUMLOCK ;
 int XK_Num_Lock ;
 scalar_t__ get_key_state (int *,unsigned int,int ) ;

uint16
ui_get_numlock_state(RDPCLIENT * This, unsigned int state)
{
 uint16 numlock_state = 0;

 if (get_key_state(This, state, XK_Num_Lock))
  numlock_state = KBD_FLAG_NUMLOCK;

 return numlock_state;
}
