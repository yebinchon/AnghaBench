
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int fz_storable ;
typedef int fz_context ;
struct TYPE_9__ {int buffer; int profile; } ;
struct TYPE_8__ {TYPE_5__** colorant; int tint; int (* drop ) (int *,int ) ;int base; } ;
struct TYPE_7__ {TYPE_5__* lookup; int base; } ;
struct TYPE_10__ {TYPE_3__ icc; TYPE_2__ separation; TYPE_1__ indexed; } ;
struct TYPE_11__ {scalar_t__ type; int flags; struct TYPE_11__* name; TYPE_4__ u; } ;
typedef TYPE_5__ fz_colorspace ;


 scalar_t__ FZ_COLORSPACE_INDEXED ;
 int FZ_COLORSPACE_IS_ICC ;
 scalar_t__ FZ_COLORSPACE_SEPARATION ;
 int FZ_MAX_COLORS ;
 int fz_drop_buffer (int *,int ) ;
 int fz_drop_colorspace (int *,int ) ;
 int fz_drop_icc_profile (int *,int ) ;
 int fz_free (int *,TYPE_5__*) ;
 int stub1 (int *,int ) ;

void
fz_drop_colorspace_imp(fz_context *ctx, fz_storable *cs_)
{
 fz_colorspace *cs = (fz_colorspace *)cs_;
 int i;

 if (cs->type == FZ_COLORSPACE_INDEXED)
 {
  fz_drop_colorspace(ctx, cs->u.indexed.base);
  fz_free(ctx, cs->u.indexed.lookup);
 }
 if (cs->type == FZ_COLORSPACE_SEPARATION)
 {
  fz_drop_colorspace(ctx, cs->u.separation.base);
  cs->u.separation.drop(ctx, cs->u.separation.tint);
  for (i = 0; i < FZ_MAX_COLORS; i++)
   fz_free(ctx, cs->u.separation.colorant[i]);
 }
 fz_free(ctx, cs->name);
 fz_free(ctx, cs);
}
