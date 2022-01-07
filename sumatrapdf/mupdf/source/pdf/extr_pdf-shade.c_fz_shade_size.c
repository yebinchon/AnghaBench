
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xdivs; int ydivs; } ;
struct TYPE_6__ {TYPE_1__ f; } ;
struct TYPE_7__ {scalar_t__ type; int buffer; int colorspace; TYPE_2__ u; } ;
typedef TYPE_3__ fz_shade ;
typedef int fz_context ;


 scalar_t__ FZ_FUNCTION_BASED ;
 int fz_colorspace_n (int *,int ) ;
 size_t fz_compressed_buffer_size (int ) ;

__attribute__((used)) static size_t
fz_shade_size(fz_context *ctx, fz_shade *s)
{
 if (s == ((void*)0))
  return 0;
 if (s->type == FZ_FUNCTION_BASED)
  return sizeof(*s) + sizeof(float) * s->u.f.xdivs * s->u.f.ydivs * fz_colorspace_n(ctx, s->colorspace);
 return sizeof(*s) + fz_compressed_buffer_size(s->buffer);
}
