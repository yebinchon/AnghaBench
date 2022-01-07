
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float linewidth; scalar_t__ linejoin; int miterlimit; } ;
typedef TYPE_1__ fz_stroke_state ;
struct TYPE_7__ {float x0; float y0; float x1; float y1; } ;
typedef TYPE_2__ fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 scalar_t__ FZ_LINEJOIN_MITER ;
 scalar_t__ FZ_LINEJOIN_MITER_XPS ;
 float fz_matrix_max_expansion (int ) ;

fz_rect
fz_adjust_rect_for_stroke(fz_context *ctx, fz_rect r, const fz_stroke_state *stroke, fz_matrix ctm)
{
 float expand;

 if (!stroke)
  return r;

 expand = stroke->linewidth;
 if (expand == 0)
  expand = 1.0f;
 expand *= fz_matrix_max_expansion(ctm);
 if ((stroke->linejoin == FZ_LINEJOIN_MITER || stroke->linejoin == FZ_LINEJOIN_MITER_XPS) && stroke->miterlimit > 1)
  expand *= stroke->miterlimit;

 r.x0 -= expand;
 r.y0 -= expand;
 r.x1 += expand;
 r.y1 += expand;
 return r;
}
