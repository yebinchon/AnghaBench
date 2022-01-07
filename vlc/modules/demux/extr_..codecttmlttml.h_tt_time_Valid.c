
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
typedef TYPE_1__ tt_time_t ;



__attribute__((used)) static inline bool tt_time_Valid( const tt_time_t *t )
{
    return t->base != -1;
}
