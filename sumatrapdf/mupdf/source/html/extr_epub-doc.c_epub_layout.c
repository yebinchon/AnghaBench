
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int fz_document ;
typedef int fz_context ;
struct TYPE_3__ {float layout_w; float layout_h; float layout_em; scalar_t__ css_sum; TYPE_2__* accel; } ;
typedef TYPE_1__ epub_document ;
struct TYPE_4__ {float layout_w; float layout_h; float layout_em; int use_doc_css; scalar_t__ css_sum; } ;


 int fz_use_document_css (int *) ;
 int invalidate_accelerator (int *,TYPE_2__*) ;
 scalar_t__ user_css_sum (int *) ;

__attribute__((used)) static void
epub_layout(fz_context *ctx, fz_document *doc_, float w, float h, float em)
{
 epub_document *doc = (epub_document*)doc_;
 uint32_t css_sum = user_css_sum(ctx);
 int use_doc_css = fz_use_document_css(ctx);

 if (doc->layout_w == w && doc->layout_h == h && doc->layout_em == em && doc->css_sum == css_sum)
  return;
 doc->layout_w = w;
 doc->layout_h = h;
 doc->layout_em = em;

 if (doc->accel == ((void*)0))
  return;






 if (doc->accel->layout_w == w &&
  doc->accel->layout_h == h &&
  doc->accel->layout_em == em &&
  doc->accel->use_doc_css == use_doc_css &&
  doc->accel->css_sum == css_sum)
  return;

 doc->accel->layout_w = w;
 doc->accel->layout_h = h;
 doc->accel->layout_em = em;
 doc->accel->use_doc_css = use_doc_css;
 doc->accel->css_sum = css_sum;
 invalidate_accelerator(ctx, doc->accel);
}
