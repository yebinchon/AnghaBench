
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_pool ;
struct TYPE_4__ {scalar_t__* text; } ;
struct TYPE_5__ {int markup_lang; TYPE_1__ content; } ;
typedef TYPE_2__ fz_html_flow ;
typedef int fz_html_box ;
typedef int fz_context ;


 int FLOW_WORD ;
 TYPE_2__* add_flow (int *,int *,int *,int *,int ,int) ;
 int memcpy (scalar_t__*,char const*,int) ;

__attribute__((used)) static void add_flow_word(fz_context *ctx, fz_pool *pool, fz_html_box *top, fz_html_box *inline_box, const char *a, const char *b, int lang)
{
 fz_html_flow *flow = add_flow(ctx, pool, top, inline_box, FLOW_WORD, b - a + 1);
 memcpy(flow->content.text, a, b - a);
 flow->content.text[b - a] = 0;
 flow->markup_lang = lang;
}
