
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xy_primary {scalar_t__ y; scalar_t__ x; } ;


 int fabs (scalar_t__) ;

__attribute__((used)) static void ChromaticAdaptation(const struct xy_primary *src_white,
                                const struct xy_primary *dst_white,
                                double in_out[3 * 3])
{
    if (fabs(src_white->x - dst_white->x) < 1e-6 &&
        fabs(src_white->y - dst_white->y) < 1e-6)
        return;


}
