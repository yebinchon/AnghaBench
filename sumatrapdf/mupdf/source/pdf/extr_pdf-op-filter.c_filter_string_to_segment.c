
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int encoding; } ;
typedef TYPE_3__ pdf_font_desc ;
struct TYPE_13__ {TYPE_5__* gstate; } ;
typedef TYPE_4__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_10__ {int word_space; TYPE_3__* font; } ;
struct TYPE_11__ {TYPE_1__ text; } ;
struct TYPE_14__ {TYPE_2__ pending; } ;
typedef TYPE_5__ filter_gstate ;


 int FZ_REPLACEMENT_CHARACTER ;
 int filter_show_char (int *,TYPE_4__*,int,int*) ;
 int filter_show_space (int *,TYPE_4__*,int ) ;
 int fz_warn (int *,char*) ;
 int mcid_char (int *,TYPE_4__*,int,int) ;
 int pdf_decode_cmap (int ,unsigned char*,unsigned char*,unsigned int*) ;
 int pdf_lookup_cmap (int ,unsigned int) ;

__attribute__((used)) static void
filter_string_to_segment(fz_context *ctx, pdf_filter_processor *p, unsigned char *buf, int len, int *pos, int *inc, int *removed_space)
{
 filter_gstate *gstate = p->gstate;
 pdf_font_desc *fontdesc = gstate->pending.text.font;
 unsigned char *end = buf + len;
 unsigned int cpt;
 int cid;
 int remove;

 buf += *pos;

 *removed_space = 0;

 while (buf < end)
 {
  int uni;
  *inc = pdf_decode_cmap(fontdesc->encoding, buf, end, &cpt);
  buf += *inc;

  cid = pdf_lookup_cmap(fontdesc->encoding, cpt);
  if (cid < 0)
  {
   uni = FZ_REPLACEMENT_CHARACTER;
   fz_warn(ctx, "cannot encode character");
  }
  else
   remove = filter_show_char(ctx, p, cid, &uni);
  if (cpt == 32 && *inc == 1)
   filter_show_space(ctx, p, gstate->pending.text.word_space);


  mcid_char(ctx, p, uni, remove);
  if (remove)
  {
   *removed_space = (cpt == 32 && *inc == 1);
   return;
  }
  *pos += *inc;
 }
}
