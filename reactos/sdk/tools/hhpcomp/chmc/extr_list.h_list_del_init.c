
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int next; int prev; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int __list_del (int ,int ) ;

__attribute__((used)) static inline void list_del_init(struct list_head *entry)
{
 __list_del(entry->prev, entry->next);
 INIT_LIST_HEAD(entry);
}
