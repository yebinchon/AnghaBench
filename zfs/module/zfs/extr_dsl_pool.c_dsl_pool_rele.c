
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;


 int dsl_pool_config_exit (TYPE_1__*,void*) ;
 int spa_close (int ,void*) ;

void
dsl_pool_rele(dsl_pool_t *dp, void *tag)
{
 dsl_pool_config_exit(dp, tag);
 spa_close(dp->dp_spa, tag);
}
