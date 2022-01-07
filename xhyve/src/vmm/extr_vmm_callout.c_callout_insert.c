
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout {int queued; struct callout* next; struct callout* prev; } ;


 scalar_t__ callout_cmp (struct callout*,struct callout*) ;
 struct callout* callout_queue ;

__attribute__((used)) static void callout_insert(struct callout *c) {
  struct callout *node = callout_queue;

  if (!node) {
    callout_queue = c;
    c->prev = ((void*)0);
    c->next = ((void*)0);
    c->queued = 1;
    return;
  }

  if (callout_cmp(c, node)) {
    node->prev = c;
    c->prev = ((void*)0);
    c->next = node;
    callout_queue = c;
    c->queued = 1;
    return;
  }

  while (node->next) {
    if (callout_cmp(c, node->next)) {
      c->prev = node;
      c->next = node->next;
      node->next->prev = c;
      node->next = c;
      c->queued = 1;
      return;
    }
    node = node->next;
  }

  c->prev = node;
  c->next = ((void*)0);
  node->next = c;
  c->queued = 1;
}
