
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_longlong_t ;
struct TYPE_10__ {scalar_t__ ub_txg; } ;
struct TYPE_11__ {int spa_mode; scalar_t__ spa_load_max_txg; TYPE_1__ spa_uberblock; } ;
typedef TYPE_2__ spa_t ;
typedef int spa_load_state_t ;


 int SPA_IMPORT_EXISTING ;
 int spa_activate (TYPE_2__*,int) ;
 int spa_async_suspend (TYPE_2__*) ;
 int spa_deactivate (TYPE_2__*) ;
 int spa_load (TYPE_2__*,int ,int ) ;
 int spa_load_note (TYPE_2__*,char*,int ) ;
 int spa_unload (TYPE_2__*) ;

__attribute__((used)) static int
spa_load_retry(spa_t *spa, spa_load_state_t state)
{
 int mode = spa->spa_mode;

 spa_unload(spa);
 spa_deactivate(spa);

 spa->spa_load_max_txg = spa->spa_uberblock.ub_txg - 1;

 spa_activate(spa, mode);
 spa_async_suspend(spa);

 spa_load_note(spa, "spa_load_retry: rewind, max txg: %llu",
     (u_longlong_t)spa->spa_load_max_txg);

 return (spa_load(spa, state, SPA_IMPORT_EXISTING));
}
