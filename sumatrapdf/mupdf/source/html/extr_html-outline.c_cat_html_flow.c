
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int text; } ;
struct TYPE_5__ {int type; struct TYPE_5__* next; TYPE_1__ content; } ;
typedef TYPE_2__ fz_html_flow ;
typedef int fz_context ;
typedef int fz_buffer ;





 int fz_append_byte (int *,int *,char) ;
 int fz_append_string (int *,int *,int ) ;

__attribute__((used)) static void
cat_html_flow(fz_context *ctx, fz_buffer *cat, fz_html_flow *flow)
{
 while (flow)
 {
  switch (flow->type)
  {
  case 128:
   fz_append_string(ctx, cat, flow->content.text);
   break;
  case 129:
  case 130:
   fz_append_byte(ctx, cat, ' ');
   break;
  default:
   break;
  }
  flow = flow->next;
 }
}
