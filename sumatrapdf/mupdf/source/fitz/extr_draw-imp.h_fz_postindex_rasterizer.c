
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* postindex ) (int *,TYPE_2__*) ;} ;
struct TYPE_6__ {TYPE_1__ fns; } ;
typedef TYPE_2__ fz_rasterizer ;
typedef int fz_context ;


 int stub1 (int *,TYPE_2__*) ;

__attribute__((used)) static inline void fz_postindex_rasterizer(fz_context *ctx, fz_rasterizer *r)
{
 if (r->fns.postindex)
  r->fns.postindex(ctx, r);
}
