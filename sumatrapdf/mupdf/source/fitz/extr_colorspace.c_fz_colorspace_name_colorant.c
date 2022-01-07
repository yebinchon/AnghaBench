
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_5__ {int ** colorant; } ;
struct TYPE_6__ {TYPE_1__ separation; } ;
struct TYPE_7__ {int n; scalar_t__ type; int flags; TYPE_2__ u; } ;
typedef TYPE_3__ fz_colorspace ;


 int FZ_COLORSPACE_HAS_CMYK ;
 int FZ_COLORSPACE_HAS_SPOTS ;
 scalar_t__ FZ_COLORSPACE_SEPARATION ;
 int FZ_ERROR_GENERIC ;
 int fz_free (int *,int *) ;
 int * fz_strdup (int *,char const*) ;
 int fz_throw (int *,int ,char*) ;
 int strcmp (char const*,char*) ;

void fz_colorspace_name_colorant(fz_context *ctx, fz_colorspace *cs, int i, const char *name)
{
 if (i < 0 || i >= cs->n)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Attempt to name out of range colorant");
 if (cs->type != FZ_COLORSPACE_SEPARATION)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Attempt to name colorant for non-separation colorspace");

 fz_free(ctx, cs->u.separation.colorant[i]);
 cs->u.separation.colorant[i] = ((void*)0);
 cs->u.separation.colorant[i] = fz_strdup(ctx, name);

 if (!strcmp(name, "Cyan") || !strcmp(name, "Magenta") || !strcmp(name, "Yellow") || !strcmp(name, "Black"))
  cs->flags |= FZ_COLORSPACE_HAS_CMYK;
 else
  cs->flags |= FZ_COLORSPACE_HAS_SPOTS;
}
