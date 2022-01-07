
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int def_count; int * out; TYPE_1__* defs_buffer; int * out_store; } ;
typedef TYPE_2__ svg_device ;
typedef int fz_output ;
typedef int fz_context ;
struct TYPE_4__ {scalar_t__ len; int data; } ;


 int fz_write_data (int *,int *,int ,scalar_t__) ;

__attribute__((used)) static fz_output *
end_def(fz_context *ctx, svg_device *sdev)
{
 if (sdev->def_count > 0)
  sdev->def_count--;
 if (sdev->def_count == 1)
  sdev->out = sdev->out_store;
 if (sdev->def_count == 0 && sdev->defs_buffer != ((void*)0))
 {
  fz_write_data(ctx, sdev->out, sdev->defs_buffer->data, sdev->defs_buffer->len);
  sdev->defs_buffer->len = 0;
 }
 return sdev->out;
}
