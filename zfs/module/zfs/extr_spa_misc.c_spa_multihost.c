
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ spa_multihost; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;

boolean_t
spa_multihost(spa_t *spa)
{
 return (spa->spa_multihost ? B_TRUE : B_FALSE);
}
