
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int extent_hooks_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ arena_t ;


 int * base_extent_hooks_get (int ) ;

extent_hooks_t *
extent_hooks_get(arena_t *arena) {
 return base_extent_hooks_get(arena->base);
}
