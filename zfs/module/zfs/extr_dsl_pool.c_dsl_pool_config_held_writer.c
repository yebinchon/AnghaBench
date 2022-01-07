
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dp_config_rwlock; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int boolean_t ;


 int RRW_WRITE_HELD (int *) ;

boolean_t
dsl_pool_config_held_writer(dsl_pool_t *dp)
{
 return (RRW_WRITE_HELD(&dp->dp_config_rwlock));
}
