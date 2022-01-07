
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ spa_suspended; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;


 scalar_t__ ZIO_SUSPEND_NONE ;

boolean_t
spa_suspended(spa_t *spa)
{
 return (spa->spa_suspended != ZIO_SUSPEND_NONE);
}
