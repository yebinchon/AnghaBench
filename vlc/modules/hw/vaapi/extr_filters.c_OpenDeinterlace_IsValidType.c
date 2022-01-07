
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct deint_mode {scalar_t__ type; } ;
typedef int filter_t ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ VAProcFilterCapDeinterlacing ;



__attribute__((used)) static inline bool
OpenDeinterlace_IsValidType(filter_t * filter,
                            VAProcFilterCapDeinterlacing const caps[],
                            unsigned int num_caps,
                            struct deint_mode const * deint_mode)
{
    (void) filter;
    for (unsigned int j = 0; j < num_caps; ++j)
        if (caps[j].type == deint_mode->type)
            return 1;
    return 0;
}
