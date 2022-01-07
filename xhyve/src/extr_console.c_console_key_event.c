
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int kbd_arg; int (* kbd_event_cb ) (int,int ,int ) ;} ;


 TYPE_1__ console ;
 int stub1 (int,int ,int ) ;

void
console_key_event(int down, uint32_t keysym)
{
 if (console.kbd_event_cb)
  (*console.kbd_event_cb)(down, keysym, console.kbd_arg);
}
