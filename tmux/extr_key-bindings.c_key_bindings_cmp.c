
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_binding {scalar_t__ key; } ;



__attribute__((used)) static int
key_bindings_cmp(struct key_binding *bd1, struct key_binding *bd2)
{
 if (bd1->key < bd2->key)
  return (-1);
 if (bd1->key > bd2->key)
  return (1);
 return (0);
}
