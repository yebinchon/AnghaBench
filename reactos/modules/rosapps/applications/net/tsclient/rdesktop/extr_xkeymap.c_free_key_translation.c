
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ key_translation ;


 int xfree (TYPE_1__*) ;

__attribute__((used)) static void
free_key_translation(key_translation * ptr)
{
 key_translation *next;

 while (ptr)
 {
  next = ptr->next;
  xfree(ptr);
  ptr = next;
 }
}
