
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_6__ {int * sm_phys; int * sm_dbuf; scalar_t__ sm_blksz; scalar_t__ sm_object; int * sm_os; int sm_shift; scalar_t__ sm_size; scalar_t__ sm_start; } ;
typedef TYPE_1__ space_map_t ;
typedef int objset_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int space_map_close (TYPE_1__*) ;
 int space_map_open_impl (TYPE_1__*) ;

int
space_map_open(space_map_t **smp, objset_t *os, uint64_t object,
    uint64_t start, uint64_t size, uint8_t shift)
{
 space_map_t *sm;
 int error;

 ASSERT(*smp == ((void*)0));
 ASSERT(os != ((void*)0));
 ASSERT(object != 0);

 sm = kmem_alloc(sizeof (space_map_t), KM_SLEEP);

 sm->sm_start = start;
 sm->sm_size = size;
 sm->sm_shift = shift;
 sm->sm_os = os;
 sm->sm_object = object;
 sm->sm_blksz = 0;
 sm->sm_dbuf = ((void*)0);
 sm->sm_phys = ((void*)0);

 error = space_map_open_impl(sm);
 if (error != 0) {
  space_map_close(sm);
  return (error);
 }
 *smp = sm;

 return (0);
}
