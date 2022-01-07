
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int spa_max_ashift; } ;
typedef TYPE_1__ spa_t ;


 int P2ROUNDUP (int ,int) ;
 int zfs_remove_max_segment ;

uint64_t
spa_remove_max_segment(spa_t *spa)
{
 return (P2ROUNDUP(zfs_remove_max_segment, 1 << spa->spa_max_ashift));
}
