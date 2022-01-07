
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* queue; } ;
typedef TYPE_1__ Group_JitterBuffer ;


 int clear_queue (TYPE_1__*) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void terminate_queue(Group_JitterBuffer *q)
{
    if (!q) return;

    clear_queue(q);
    free(q->queue);
    free(q);
}
