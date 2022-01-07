
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int def_count; int * out; int * defs; int * defs_buffer; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_output ;
typedef int fz_context ;


 int * fz_new_buffer (int *,int) ;
 int * fz_new_output_with_buffer (int *,int *) ;

__attribute__((used)) static fz_output *
start_def(fz_context *ctx, svg_device *sdev)
{
 sdev->def_count++;
 if (sdev->def_count == 2)
 {
  if (sdev->defs == ((void*)0))
  {
   if (sdev->defs_buffer == ((void*)0))
    sdev->defs_buffer = fz_new_buffer(ctx, 1024);
   sdev->defs = fz_new_output_with_buffer(ctx, sdev->defs_buffer);
  }
  sdev->out = sdev->defs;
 }
 return sdev->out;
}
