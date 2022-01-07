
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os_spa; } ;
typedef TYPE_1__ objset_t ;
typedef int boolean_t ;


 int SPA_FEATURE_USEROBJ_ACCOUNTING ;
 scalar_t__ dmu_objset_userused_enabled (TYPE_1__*) ;
 scalar_t__ spa_feature_is_enabled (int ,int ) ;

boolean_t
dmu_objset_userobjused_enabled(objset_t *os)
{
 return (dmu_objset_userused_enabled(os) &&
     spa_feature_is_enabled(os->os_spa, SPA_FEATURE_USEROBJ_ACCOUNTING));
}
