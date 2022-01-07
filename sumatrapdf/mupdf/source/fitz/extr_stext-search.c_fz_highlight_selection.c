
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct highlight {int len; int cap; float hfuzz; float vfuzz; int * box; } ;
struct callbacks {struct highlight* arg; int on_line; int on_char; } ;
typedef int fz_stext_page ;
typedef int fz_quad ;
typedef int fz_point ;
typedef int fz_context ;


 int fz_enumerate_selection (int *,int *,int ,int ,struct callbacks*) ;
 int on_highlight_char ;
 int on_highlight_line ;

int
fz_highlight_selection(fz_context *ctx, fz_stext_page *page, fz_point a, fz_point b, fz_quad *quads, int max_quads)
{
 struct callbacks cb;
 struct highlight hits;

 hits.len = 0;
 hits.cap = max_quads;
 hits.box = quads;
 hits.hfuzz = 0.5f;
 hits.vfuzz = 0.1f;

 cb.on_char = on_highlight_char;
 cb.on_line = on_highlight_line;
 cb.arg = &hits;

 fz_enumerate_selection(ctx, page, a, b, &cb);

 return hits.len;
}
