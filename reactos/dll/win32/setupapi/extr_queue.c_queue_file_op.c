
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_op_queue {int count; struct file_op* tail; struct file_op* head; } ;
struct file_op {struct file_op* next; } ;



__attribute__((used)) static inline void queue_file_op( struct file_op_queue *queue, struct file_op *op )
{
    op->next = ((void*)0);
    if (queue->tail) queue->tail->next = op;
    else queue->head = op;
    queue->tail = op;
    queue->count++;
}
