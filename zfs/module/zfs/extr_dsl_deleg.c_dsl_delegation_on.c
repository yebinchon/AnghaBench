
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int os_spa; } ;
typedef TYPE_1__ objset_t ;
typedef int boolean_t ;


 int spa_delegation (int ) ;

boolean_t
dsl_delegation_on(objset_t *os)
{
 return (!!spa_delegation(os->os_spa));
}
