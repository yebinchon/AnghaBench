
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int gtop; TYPE_3__* gstate; } ;
typedef TYPE_2__ pdf_run_processor ;
struct TYPE_8__ {int word_space; TYPE_4__* font; } ;
struct TYPE_10__ {TYPE_1__ text; } ;
typedef TYPE_3__ pdf_gstate ;
struct TYPE_11__ {int encoding; } ;
typedef TYPE_4__ pdf_font_desc ;
typedef int fz_context ;


 int fz_warn (int *,char*) ;
 int pdf_decode_cmap (int ,unsigned char*,unsigned char*,unsigned int*) ;
 int pdf_lookup_cmap (int ,unsigned int) ;
 int pdf_show_char (int *,TYPE_2__*,int) ;
 int pdf_show_space (int *,TYPE_2__*,int ) ;

__attribute__((used)) static void
show_string(fz_context *ctx, pdf_run_processor *pr, unsigned char *buf, int len)
{
 pdf_gstate *gstate = pr->gstate + pr->gtop;
 pdf_font_desc *fontdesc = gstate->text.font;
 unsigned char *end = buf + len;
 unsigned int cpt;
 int cid;

 while (buf < end)
 {
  int w = pdf_decode_cmap(fontdesc->encoding, buf, end, &cpt);
  buf += w;

  cid = pdf_lookup_cmap(fontdesc->encoding, cpt);
  if (cid >= 0)
   pdf_show_char(ctx, pr, cid);
  else
   fz_warn(ctx, "cannot encode character");
  if (cpt == 32 && w == 1)
   pdf_show_space(ctx, pr, gstate->text.word_space);
 }
}
