
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pool ;
typedef int fz_html_box ;
typedef int fz_context ;
typedef int fz_bidi_direction ;


 int * fz_pool_alloc (int *,int *,int) ;
 int init_box (int *,int *,int ) ;

__attribute__((used)) static fz_html_box *new_box(fz_context *ctx, fz_pool *pool, fz_bidi_direction markup_dir)
{
 fz_html_box *box = fz_pool_alloc(ctx, pool, sizeof *box);
 init_box(ctx, box, markup_dir);
 return box;
}
