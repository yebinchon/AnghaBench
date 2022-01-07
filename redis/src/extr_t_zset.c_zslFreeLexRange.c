
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ min; scalar_t__ max; } ;
typedef TYPE_1__ zlexrangespec ;
struct TYPE_5__ {scalar_t__ minstring; scalar_t__ maxstring; } ;


 int sdsfree (scalar_t__) ;
 TYPE_3__ shared ;

void zslFreeLexRange(zlexrangespec *spec) {
    if (spec->min != shared.minstring &&
        spec->min != shared.maxstring) sdsfree(spec->min);
    if (spec->max != shared.minstring &&
        spec->max != shared.maxstring) sdsfree(spec->max);
}
