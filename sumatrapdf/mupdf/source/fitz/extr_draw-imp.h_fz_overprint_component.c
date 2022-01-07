
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* mask; } ;
typedef TYPE_1__ fz_overprint ;



__attribute__((used)) static int inline fz_overprint_component(const fz_overprint *op, int i)
{
 return ((op->mask[i>>5]>>(i & 31)) & 1) == 0;
}
