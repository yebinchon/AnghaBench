
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int mc_space; int mc_dspace; int mc_spa; } ;
typedef TYPE_1__ metaslab_class_t ;


 scalar_t__ spa_deflate (int ) ;

uint64_t
metaslab_class_get_dspace(metaslab_class_t *mc)
{
 return (spa_deflate(mc->mc_spa) ? mc->mc_dspace : mc->mc_space);
}
