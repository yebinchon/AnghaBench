
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bq_size; } ;
typedef TYPE_1__ bqueue_t ;
typedef int boolean_t ;



boolean_t
bqueue_empty(bqueue_t *q)
{
 return (q->bq_size == 0);
}
