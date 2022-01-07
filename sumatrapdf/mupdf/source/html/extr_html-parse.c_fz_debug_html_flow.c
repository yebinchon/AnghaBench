
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* text; } ;
struct TYPE_8__ {int type; double y; double x; double w; double h; struct TYPE_8__* next; scalar_t__ breaks_line; TYPE_2__ content; TYPE_4__* box; } ;
typedef TYPE_3__ fz_html_flow ;
struct TYPE_9__ {double em; TYPE_1__* style; } ;
typedef TYPE_4__ fz_html_box ;
typedef int fz_context ;
struct TYPE_6__ {scalar_t__ small_caps; int font; } ;
 scalar_t__ fz_font_is_bold (int *,int ) ;
 scalar_t__ fz_font_is_italic (int *,int ) ;
 scalar_t__ fz_font_is_monospaced (int *,int ) ;
 scalar_t__ fz_font_is_serif (int *,int ) ;
 char* fz_font_name (int *,int ) ;
 int indent (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
fz_debug_html_flow(fz_context *ctx, fz_html_flow *flow, int level)
{
 fz_html_box *sbox = ((void*)0);
 while (flow)
 {
  if (flow->box != sbox) {
   if (sbox) {
    indent(level);
    printf("}\n");
   }
   sbox = flow->box;
   indent(level);
   printf("span em=%g font='%s'", sbox->em, fz_font_name(ctx, sbox->style->font));
   if (fz_font_is_serif(ctx, sbox->style->font))
    printf(" serif");
   else
    printf(" sans");
   if (fz_font_is_monospaced(ctx, sbox->style->font))
    printf(" monospaced");
   if (fz_font_is_bold(ctx, sbox->style->font))
    printf(" bold");
   if (fz_font_is_italic(ctx, sbox->style->font))
    printf(" italic");
   if (sbox->style->small_caps)
    printf(" small-caps");
   printf("\n");
   indent(level);
   printf("{\n");
  }

  indent(level+1);
  switch (flow->type) {
  case 128: printf("word "); break;
  case 129: printf("space"); break;
  case 131: printf("sbrk "); break;
  case 130: printf("shy  "); break;
  case 133: printf("break"); break;
  case 132: printf("image"); break;
  case 134: printf("anchor"); break;
  }
  printf(" y=%g x=%g w=%g", flow->y, flow->x, flow->w);
  if (flow->type == 132)
   printf(" h=%g", flow->h);
  if (flow->type == 128)
   printf(" text='%s'", flow->content.text);
  printf("\n");
  if (flow->breaks_line) {
   indent(level+1);
   printf("*\n");
  }

  flow = flow->next;
 }
 indent(level);
 printf("}\n");
}
