
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;



__attribute__((used)) static __inline__ int list_empty(struct list_head *head)
{
 return head->next == head;
}
