
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {int num_separations; void** cmyk; void** rgba; int * name; } ;
typedef TYPE_1__ fz_separations ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int FZ_MAX_SEPARATIONS ;
 int fz_strdup (int *,char const*) ;
 int fz_throw (int *,int ,char*) ;

void fz_add_separation_equivalents(fz_context *ctx, fz_separations *sep, uint32_t rgba, uint32_t cmyk, const char *name)
{
 int n;

 if (!sep)
  fz_throw(ctx, FZ_ERROR_GENERIC, "can't add to non-existent separations");

 n = sep->num_separations;
 if (n == FZ_MAX_SEPARATIONS)
  fz_throw(ctx, FZ_ERROR_GENERIC, "too many separations");

 sep->name[n] = fz_strdup(ctx, name);
 sep->rgba[n] = rgba;
 sep->cmyk[n] = cmyk;

 sep->num_separations++;
}
