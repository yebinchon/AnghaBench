
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MessageQueue ;


 int queue_reset_reader (int *) ;

__attribute__((used)) static void
queue_shmem_cleanup(MessageQueue *queue)
{
 queue_reset_reader(queue);
}
