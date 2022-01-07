
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int next; } ;


 int __list_add (struct list_head*,struct list_head*,int ) ;

__attribute__((used)) static inline void list_add(struct list_head *New, struct list_head *head)
{
 __list_add(New, head, head->next);
}
