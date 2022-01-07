
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int extent_hooks_t ;
struct TYPE_3__ {int extent_hooks; } ;
typedef TYPE_1__ base_t ;


 int ATOMIC_ACQUIRE ;
 scalar_t__ atomic_load_p (int *,int ) ;

extent_hooks_t *
base_extent_hooks_get(base_t *base) {
 return (extent_hooks_t *)atomic_load_p(&base->extent_hooks,
     ATOMIC_ACQUIRE);
}
