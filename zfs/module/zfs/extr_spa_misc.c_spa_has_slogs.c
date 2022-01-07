
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* spa_log_class; } ;
typedef TYPE_2__ spa_t ;
typedef int boolean_t ;
struct TYPE_4__ {int * mc_rotor; } ;



boolean_t
spa_has_slogs(spa_t *spa)
{
 return (spa->spa_log_class->mc_rotor != ((void*)0));
}
