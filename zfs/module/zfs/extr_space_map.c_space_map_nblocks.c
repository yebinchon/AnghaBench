
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int sm_blksz; } ;
typedef TYPE_1__ space_map_t ;


 int DIV_ROUND_UP (int ,int ) ;
 int space_map_length (TYPE_1__*) ;

uint64_t
space_map_nblocks(space_map_t *sm)
{
 if (sm == ((void*)0))
  return (0);
 return (DIV_ROUND_UP(space_map_length(sm), sm->sm_blksz));
}
