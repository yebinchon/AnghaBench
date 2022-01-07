
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_autotrim; } ;
typedef TYPE_1__ spa_t ;
typedef int spa_autotrim_t ;



spa_autotrim_t
spa_get_autotrim(spa_t *spa)
{
 return (spa->spa_autotrim);
}
