
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int next; int prev; } ;


 int __list_del (int ,int ) ;

__attribute__((used)) static __inline__ void list_del(struct list_head *entry)
{
 __list_del(entry->prev, entry->next);
}
