
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float Maximum; float Default; float Minimum; } ;
struct filter_level {float default_val; float max; float min; TYPE_1__ Range; int level; } ;


 int atomic_store (int *,float) ;

__attribute__((used)) static void SetLevel(struct filter_level *range, float val)
{
    int level;
    if (val > range->default_val)
        level = (range->Range.Maximum - range->Range.Default) * (val - range->default_val) /
                (range->max - range->default_val);
    else if (val < range->default_val)
        level = (range->Range.Minimum - range->Range.Default) * (val - range->default_val) /
                (range->min - range->default_val);
    else
        level = 0;

    atomic_store( &range->level, range->Range.Default + level );
}
