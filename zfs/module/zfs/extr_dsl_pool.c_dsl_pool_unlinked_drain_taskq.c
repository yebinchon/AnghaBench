
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int taskq_t ;
struct TYPE_3__ {int * dp_unlinked_drain_taskq; } ;
typedef TYPE_1__ dsl_pool_t ;



taskq_t *
dsl_pool_unlinked_drain_taskq(dsl_pool_t *dp)
{
 return (dp->dp_unlinked_drain_taskq);
}
