
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


struct TYPE_19__ {int gtop; int gparent; TYPE_3__* gstate; int dev; } ;
typedef TYPE_1__ pdf_run_processor ;
typedef int pdf_processor ;
struct TYPE_18__ {float x0; float y0; } ;
struct TYPE_20__ {int id; float xstep; float ystep; int contents; int resources; int document; TYPE_17__ bbox; int matrix; scalar_t__ ismask; } ;
typedef TYPE_2__ pdf_pattern ;
struct TYPE_21__ {void* ctm; int * softmask; int stroke; int fill; } ;
typedef TYPE_3__ pdf_gstate ;
struct TYPE_22__ {float x0; float y0; float x1; float y1; } ;
typedef TYPE_4__ fz_rect ;
typedef void* fz_matrix ;
typedef int fz_context ;


 int PDF_FILL ;
 int PDF_STROKE ;
 int ceilf (float) ;
 int floorf (float) ;
 int fz_begin_tile_id (int *,int ,TYPE_4__,TYPE_17__,float,float,void*,int) ;
 void* fz_concat (int ,void*) ;
 int fz_end_tile (int *,int ) ;
 void* fz_invert_matrix (void*) ;
 void* fz_pre_translate (void*,int,int) ;
 TYPE_4__ fz_transform_rect (TYPE_4__,void*) ;
 int pdf_copy_pattern_gstate (int *,TYPE_3__*,TYPE_3__*) ;
 int pdf_drop_material (int *,int *) ;
 int pdf_drop_obj (int *,int *) ;
 int pdf_grestore (int *,TYPE_1__*) ;
 int pdf_gsave (int *,TYPE_1__*) ;
 int pdf_keep_material (int *,int *) ;
 int pdf_process_contents (int *,int *,int ,int ,int ,int *) ;
 int pdf_unset_pattern (int *,TYPE_1__*,int) ;

__attribute__((used)) static pdf_gstate *
pdf_show_pattern(fz_context *ctx, pdf_run_processor *pr, pdf_pattern *pat, int pat_gstate_num, fz_rect area, int what)
{
 pdf_gstate *gstate;
 pdf_gstate *pat_gstate;
 int gparent_save;
 fz_matrix ptm, invptm, gparent_save_ctm;
 int x0, y0, x1, y1;
 float fx0, fy0, fx1, fy1;
 fz_rect local_area;
 int id;

 pdf_gsave(ctx, pr);
 gstate = pr->gstate + pr->gtop;
 pat_gstate = pr->gstate + pat_gstate_num;


 pdf_copy_pattern_gstate(ctx, gstate, pat_gstate);

 if (pat->ismask)
 {
  pdf_unset_pattern(ctx, pr, PDF_FILL);
  pdf_unset_pattern(ctx, pr, PDF_STROKE);
  if (what == PDF_FILL)
  {
   pdf_drop_material(ctx, &gstate->stroke);
   pdf_keep_material(ctx, &gstate->fill);
   gstate->stroke = gstate->fill;
  }
  if (what == PDF_STROKE)
  {
   pdf_drop_material(ctx, &gstate->fill);
   pdf_keep_material(ctx, &gstate->stroke);
   gstate->fill = gstate->stroke;
  }
  id = 0;
 }
 else
 {

  pdf_unset_pattern(ctx, pr, what);
  id = pat->id;
 }


 if (gstate->softmask)
 {
  pdf_drop_obj(ctx, gstate->softmask);
  gstate->softmask = ((void*)0);
 }

 ptm = fz_concat(pat->matrix, pat_gstate->ctm);
 invptm = fz_invert_matrix(ptm);


 gparent_save = pr->gparent;
 pr->gparent = pr->gtop-1;
 gparent_save_ctm = pr->gstate[pr->gparent].ctm;
 pr->gstate[pr->gparent].ctm = ptm;




 local_area = fz_transform_rect(area, invptm);

 fx0 = (local_area.x0 - pat->bbox.x0) / pat->xstep;
 fy0 = (local_area.y0 - pat->bbox.y0) / pat->ystep;
 fx1 = (local_area.x1 - pat->bbox.x0) / pat->xstep;
 fy1 = (local_area.y1 - pat->bbox.y0) / pat->ystep;
 if (fx0 > fx1)
 {
  float t = fx0; fx0 = fx1; fx1 = t;
 }
 if (fy0 > fy1)
 {
  float t = fy0; fy0 = fy1; fy1 = t;
 }
 if (0)

 {
  int cached = fz_begin_tile_id(ctx, pr->dev, local_area, pat->bbox, pat->xstep, pat->ystep, ptm, id);
  if (!cached)
  {
   gstate->ctm = ptm;
   pdf_gsave(ctx, pr);
   pdf_process_contents(ctx, (pdf_processor*)pr, pat->document, pat->resources, pat->contents, ((void*)0));
   pdf_grestore(ctx, pr);
  }
  fz_end_tile(ctx, pr->dev);
 }
 else
 {
  int x, y;






  x0 = floorf(fx0 + 0.001f);
  y0 = floorf(fy0 + 0.001f);
  x1 = ceilf(fx1 - 0.001f);
  y1 = ceilf(fy1 - 0.001f);



  if (fx1 > fx0 && x1 == x0)
   x1 = x0 + 1;
  if (fy1 > fy0 && y1 == y0)
   y1 = y0 + 1;

  for (y = y0; y < y1; y++)
  {
   for (x = x0; x < x1; x++)
   {
    gstate->ctm = fz_pre_translate(ptm, x * pat->xstep, y * pat->ystep);
    pdf_gsave(ctx, pr);
    pdf_process_contents(ctx, (pdf_processor*)pr, pat->document, pat->resources, pat->contents, ((void*)0));
    pdf_grestore(ctx, pr);
   }
  }
 }

 pr->gstate[pr->gparent].ctm = gparent_save_ctm;
 pr->gparent = gparent_save;

 pdf_grestore(ctx, pr);

 return pr->gstate + pr->gtop;
}
