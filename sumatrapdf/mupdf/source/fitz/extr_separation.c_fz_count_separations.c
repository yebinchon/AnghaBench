
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_separations; } ;
typedef TYPE_1__ fz_separations ;
typedef int fz_context ;



int fz_count_separations(fz_context *ctx, const fz_separations *sep)
{
 if (!sep)
  return 0;
 return sep->num_separations;
}
