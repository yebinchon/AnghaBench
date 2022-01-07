
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* mask; } ;
typedef TYPE_1__ fz_overprint ;


 int FZ_MAX_COLORS ;

__attribute__((used)) static int inline fz_overprint_required(const fz_overprint *op)
{
 int i;

 if (op == ((void*)0))
  return 0;

 for (i = 0; i < (FZ_MAX_COLORS+31)/32; i++)
  if (op->mask[i] != 0)
   return 1;

 return 0;
}
