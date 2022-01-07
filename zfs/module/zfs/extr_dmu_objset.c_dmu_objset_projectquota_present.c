
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* os_phys; } ;
typedef TYPE_2__ objset_t ;
typedef int boolean_t ;
struct TYPE_4__ {int os_flags; } ;


 int OBJSET_FLAG_PROJECTQUOTA_COMPLETE ;

boolean_t
dmu_objset_projectquota_present(objset_t *os)
{
 return (os->os_phys->os_flags &
     OBJSET_FLAG_PROJECTQUOTA_COMPLETE);
}
