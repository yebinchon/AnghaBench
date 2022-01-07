
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int alpha; int gstate_num; void* color_params; int * shade; int * pattern; scalar_t__* v; void* colorspace; void* kind; } ;
struct TYPE_7__ {int alpha; int gstate_num; void* color_params; int * shade; int * pattern; scalar_t__* v; void* colorspace; void* kind; } ;
struct TYPE_6__ {int scale; int size; scalar_t__ rise; scalar_t__ render; int * font; scalar_t__ leading; scalar_t__ word_space; scalar_t__ char_space; } ;
struct TYPE_9__ {TYPE_3__ stroke; TYPE_2__ fill; scalar_t__ luminosity; int softmask_ctm; int * softmask_resources; int * softmask; scalar_t__ blendmode; TYPE_1__ text; int stroke_state; scalar_t__ clip_depth; int ctm; } ;
typedef TYPE_4__ pdf_gstate ;
typedef int fz_matrix ;
typedef int fz_context ;


 void* PDF_MAT_COLOR ;
 void* fz_default_color_params ;
 int fz_device_gray (int *) ;
 int fz_identity ;
 void* fz_keep_colorspace (int *,int ) ;
 int fz_new_stroke_state (int *) ;

__attribute__((used)) static void
pdf_init_gstate(fz_context *ctx, pdf_gstate *gs, fz_matrix ctm)
{
 gs->ctm = ctm;
 gs->clip_depth = 0;

 gs->stroke_state = fz_new_stroke_state(ctx);

 gs->stroke.kind = PDF_MAT_COLOR;
 gs->stroke.colorspace = fz_keep_colorspace(ctx, fz_device_gray(ctx));
 gs->stroke.v[0] = 0;
 gs->stroke.pattern = ((void*)0);
 gs->stroke.shade = ((void*)0);
 gs->stroke.alpha = 1;
 gs->stroke.gstate_num = -1;

 gs->fill.kind = PDF_MAT_COLOR;
 gs->fill.colorspace = fz_keep_colorspace(ctx, fz_device_gray(ctx));
 gs->fill.v[0] = 0;
 gs->fill.pattern = ((void*)0);
 gs->fill.shade = ((void*)0);
 gs->fill.alpha = 1;
 gs->fill.gstate_num = -1;

 gs->text.char_space = 0;
 gs->text.word_space = 0;
 gs->text.scale = 1;
 gs->text.leading = 0;
 gs->text.font = ((void*)0);
 gs->text.size = -1;
 gs->text.render = 0;
 gs->text.rise = 0;

 gs->blendmode = 0;
 gs->softmask = ((void*)0);
 gs->softmask_resources = ((void*)0);
 gs->softmask_ctm = fz_identity;
 gs->luminosity = 0;

 gs->fill.color_params = fz_default_color_params;
 gs->stroke.color_params = fz_default_color_params;
}
