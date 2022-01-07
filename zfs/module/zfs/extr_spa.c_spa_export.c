
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int boolean_t ;


 int POOL_STATE_EXPORTED ;
 int spa_export_common (char*,int ,int **,int ,int ) ;

int
spa_export(char *pool, nvlist_t **oldconfig, boolean_t force,
    boolean_t hardforce)
{
 return (spa_export_common(pool, POOL_STATE_EXPORTED, oldconfig,
     force, hardforce));
}
