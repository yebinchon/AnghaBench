
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* mask; } ;
typedef TYPE_1__ fz_overprint ;



__attribute__((used)) static void inline fz_set_overprint(fz_overprint *op, int i)
{
 op->mask[i>>5] |= 1<<(i&31);
}
