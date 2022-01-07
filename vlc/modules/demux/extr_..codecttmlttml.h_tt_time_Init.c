
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; scalar_t__ frames; } ;
typedef TYPE_1__ tt_time_t ;



__attribute__((used)) static inline void tt_time_Init( tt_time_t *t )
{
    t->base = -1;
    t->frames = 0;
}
