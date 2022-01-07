
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int remote_modifier_state; int saved_remote_modifier_state; } ;
struct TYPE_5__ {TYPE_1__ xkeymap; } ;
typedef TYPE_2__ RDPCLIENT ;


 scalar_t__ is_modifier (int ) ;

void
save_remote_modifiers(RDPCLIENT * This, uint8 scancode)
{
 if (is_modifier(scancode))
  return;

 This->xkeymap.saved_remote_modifier_state = This->xkeymap.remote_modifier_state;
}
