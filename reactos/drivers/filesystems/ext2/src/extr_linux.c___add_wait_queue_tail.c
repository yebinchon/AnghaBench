
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int task_list; } ;
typedef TYPE_1__ wait_queue_head_t ;
struct __wait_queue {int task_list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void __add_wait_queue_tail(wait_queue_head_t *head,
        struct __wait_queue *new)
{
    list_add_tail(&new->task_list, &head->task_list);
}
