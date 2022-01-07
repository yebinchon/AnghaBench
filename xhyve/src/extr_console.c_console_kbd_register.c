
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int kbd_event_func_t ;
struct TYPE_2__ {int kbd_priority; void* kbd_arg; int kbd_event_cb; } ;


 TYPE_1__ console ;

void
console_kbd_register(kbd_event_func_t event_cb, void *arg, int pri)
{
 if (pri > console.kbd_priority) {
  console.kbd_event_cb = event_cb;
  console.kbd_arg = arg;
  console.kbd_priority = pri;
 }
}
