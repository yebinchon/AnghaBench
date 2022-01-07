
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_separations; int* cs_pos; int * cs; int * name; } ;
typedef TYPE_1__ fz_separations ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int FZ_ERROR_GENERIC ;
 int FZ_MAX_SEPARATIONS ;
 int fz_keep_colorspace (int *,int *) ;
 int fz_strdup (int *,char const*) ;
 int fz_throw (int *,int ,char*) ;

void fz_add_separation(fz_context *ctx, fz_separations *sep, const char *name, fz_colorspace *cs, int colorant)
{
 int n;

 if (!sep)
  fz_throw(ctx, FZ_ERROR_GENERIC, "can't add to non-existent separations");

 n = sep->num_separations;
 if (n == FZ_MAX_SEPARATIONS)
  fz_throw(ctx, FZ_ERROR_GENERIC, "too many separations");

 sep->name[n] = fz_strdup(ctx, name);
 sep->cs[n] = fz_keep_colorspace(ctx, cs);
 sep->cs_pos[n] = colorant;

 sep->num_separations++;
}
