
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __wait_queue {int dummy; } ;


 int kfree (struct __wait_queue*) ;

void
wait_queue_destroy(struct __wait_queue * wait)
{
    kfree(wait);
}
