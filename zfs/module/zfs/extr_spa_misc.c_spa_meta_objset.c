
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
typedef int objset_t ;



objset_t *
spa_meta_objset(spa_t *spa)
{
 return (spa->spa_meta_objset);
}
