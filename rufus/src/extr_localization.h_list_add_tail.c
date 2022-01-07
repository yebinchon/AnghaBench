
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;



__attribute__((used)) static __inline void list_add_tail(struct list_head *entry,
 struct list_head *head)
{
 entry->next = head;
 entry->prev = head->prev;

 head->prev->next = entry;
 head->prev = entry;
}
