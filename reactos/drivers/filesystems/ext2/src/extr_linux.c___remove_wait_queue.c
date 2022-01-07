
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct __wait_queue {int task_list; } ;


 int list_del (int *) ;

__attribute__((used)) static inline void __remove_wait_queue(wait_queue_head_t *head,
                                       struct __wait_queue *old)
{
    list_del(&old->task_list);
}
