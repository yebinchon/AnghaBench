
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int count; int max_len; int* index; int n; int patch_l; int flip; } ;
typedef TYPE_1__ fz_weights ;
struct TYPE_7__ {int width; } ;
typedef TYPE_2__ fz_scale_filter ;
typedef int fz_context ;


 scalar_t__ ceilf (int) ;
 TYPE_1__* fz_malloc (int *,int) ;

__attribute__((used)) static fz_weights *
new_weights(fz_context *ctx, fz_scale_filter *filter, int src_w, float dst_w, int patch_w, int n, int flip, int patch_l)
{
 int max_len;
 fz_weights *weights;

 if (src_w > dst_w)
 {



  max_len = (int)ceilf((2 * filter->width * src_w)/dst_w);
  if (max_len > src_w)
   max_len = src_w;
 }
 else
 {



  max_len = 2 * filter->width;
 }





 weights = fz_malloc(ctx, sizeof(*weights)+(max_len+3)*(patch_w+1)*sizeof(int));
 if (!weights)
  return ((void*)0);
 weights->count = -1;
 weights->max_len = max_len;
 weights->index[0] = patch_w;
 weights->n = n;
 weights->patch_l = patch_l;
 weights->flip = flip;
 return weights;
}
