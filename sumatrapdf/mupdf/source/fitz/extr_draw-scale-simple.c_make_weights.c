
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int count; } ;
typedef TYPE_1__ fz_weights ;
struct TYPE_16__ {float width; } ;
typedef TYPE_2__ fz_scale_filter ;
struct TYPE_17__ {int src_w; float x; float dst_w; int vertical; int dst_w_int; int patch_l; int patch_r; int n; int flip; TYPE_1__* weights; TYPE_2__* filter; } ;
typedef TYPE_3__ fz_scale_cache ;
typedef int fz_context ;


 int add_weight (TYPE_1__*,int,int,TYPE_2__*,float,float,float,int,float) ;
 int ceilf (float) ;
 int check_weights (TYPE_1__*,int,int,float,float) ;
 int floorf (float) ;
 int fz_free (int *,TYPE_1__*) ;
 int init_weights (TYPE_1__*,int) ;
 TYPE_1__* new_weights (int *,TYPE_2__*,int,float,int,int,int,int) ;
 int reorder_weights (TYPE_1__*,int,int) ;

__attribute__((used)) static fz_weights *
make_weights(fz_context *ctx, int src_w, float x, float dst_w, fz_scale_filter *filter, int vertical, int dst_w_int, int patch_l, int patch_r, int n, int flip, fz_scale_cache *cache)
{
 fz_weights *weights;
 float F, G;
 float window;
 int j;

 if (cache)
 {
  if (cache->src_w == src_w && cache->x == x && cache->dst_w == dst_w &&
   cache->filter == filter && cache->vertical == vertical &&
   cache->dst_w_int == dst_w_int &&
   cache->patch_l == patch_l && cache->patch_r == patch_r &&
   cache->n == n && cache->flip == flip)
  {
   return cache->weights;
  }
  cache->src_w = src_w;
  cache->x = x;
  cache->dst_w = dst_w;
  cache->filter = filter;
  cache->vertical = vertical;
  cache->dst_w_int = dst_w_int;
  cache->patch_l = patch_l;
  cache->patch_r = patch_r;
  cache->n = n;
  cache->flip = flip;
  fz_free(ctx, cache->weights);
  cache->weights = ((void*)0);
 }

 if (dst_w < src_w)
 {

  F = dst_w / src_w;
  G = 1;
 }
 else
 {

  F = 1;
  G = src_w / dst_w;
 }
 window = filter->width / F;
 weights = new_weights(ctx, filter, src_w, dst_w, patch_r-patch_l, n, flip, patch_l);
 if (!weights)
  return ((void*)0);
 for (j = patch_l; j < patch_r; j++)
 {

  float centre = (j - x + 0.5f)*src_w/dst_w - 0.5f;
  int l, r;
  l = ceilf(centre - window);
  r = floorf(centre + window);
  init_weights(weights, j);
  for (; l <= r; l++)
  {
   add_weight(weights, j, l, filter, x, F, G, src_w, dst_w);
  }
  check_weights(weights, j, dst_w_int, x, dst_w);
  if (vertical)
  {
   reorder_weights(weights, j, src_w);
  }
 }
 weights->count++;
 if (cache)
 {
  cache->weights = weights;
 }
 return weights;
}
