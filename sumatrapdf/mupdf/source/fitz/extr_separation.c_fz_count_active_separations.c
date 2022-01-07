
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_separations; } ;
typedef TYPE_1__ fz_separations ;
typedef int fz_context ;


 scalar_t__ FZ_SEPARATION_SPOT ;
 scalar_t__ sep_state (TYPE_1__ const*,int) ;

int fz_count_active_separations(fz_context *ctx, const fz_separations *sep)
{
 int i, n, c;

 if (!sep)
  return 0;
 n = sep->num_separations;
 c = 0;
 for (i = 0; i < n; i++)
  if (sep_state(sep, i) == FZ_SEPARATION_SPOT)
   c++;
 return c;
}
