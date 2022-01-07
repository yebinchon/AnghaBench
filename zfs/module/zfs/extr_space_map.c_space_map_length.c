
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {TYPE_1__* sm_phys; } ;
typedef TYPE_2__ space_map_t ;
struct TYPE_4__ {int smp_length; } ;



uint64_t
space_map_length(space_map_t *sm)
{
 return (sm != ((void*)0) ? sm->sm_phys->smp_length : 0);
}
