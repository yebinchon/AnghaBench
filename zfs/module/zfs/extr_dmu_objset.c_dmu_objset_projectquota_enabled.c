
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int os_spa; TYPE_1__* os_phys; } ;
typedef TYPE_2__ objset_t ;
typedef int boolean_t ;
struct TYPE_5__ {size_t os_type; } ;


 int * DMU_PROJECTUSED_DNODE (TYPE_2__*) ;
 int SPA_FEATURE_PROJECT_QUOTA ;
 scalar_t__ spa_feature_is_enabled (int ,int ) ;
 int ** used_cbs ;

boolean_t
dmu_objset_projectquota_enabled(objset_t *os)
{
 return (used_cbs[os->os_phys->os_type] != ((void*)0) &&
     DMU_PROJECTUSED_DNODE(os) != ((void*)0) &&
     spa_feature_is_enabled(os->os_spa, SPA_FEATURE_PROJECT_QUOTA));
}
