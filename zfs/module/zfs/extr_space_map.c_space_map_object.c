
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int sm_object; } ;
typedef TYPE_1__ space_map_t ;



uint64_t
space_map_object(space_map_t *sm)
{
 return (sm != ((void*)0) ? sm->sm_object : 0);
}
