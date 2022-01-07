
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; struct list_head* prev; } ;



__attribute__((used)) static __inline void list_add(struct list_head *entry, struct list_head *head)
{
 entry->next = head->next;
 entry->prev = head;

 head->next->prev = entry;
 head->next = entry;
}
