
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * rect; } ;
struct TYPE_5__ {TYPE_1__ fns; } ;
typedef TYPE_2__ fz_rasterizer ;
typedef int fz_context ;



__attribute__((used)) static inline int fz_antidropout_rasterizer(fz_context *ctx, fz_rasterizer *r)
{
 return r->fns.rect != ((void*)0);
}
