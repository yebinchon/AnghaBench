
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct callout {scalar_t__ queued; TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_4__ {TYPE_1__* prev; } ;
struct TYPE_3__ {TYPE_2__* next; } ;


 TYPE_2__* callout_queue ;

__attribute__((used)) static void callout_remove(struct callout *c) {
  if (!c->queued) {
    return;
  }

  if (c->prev) {
    c->prev->next = c->next;
  } else {
    callout_queue = c->next;
  }

  if (c->next) {
    c->next->prev = c->prev;
  }

  c->prev = ((void*)0);
  c->next = ((void*)0);
  c->queued = 0;
}
