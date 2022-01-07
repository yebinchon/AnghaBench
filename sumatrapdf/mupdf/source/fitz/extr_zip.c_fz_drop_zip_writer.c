
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int central; int output; int closed; } ;
typedef TYPE_1__ fz_zip_writer ;
typedef int fz_context ;


 int fz_drop_buffer (int *,int ) ;
 int fz_drop_output (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;
 int fz_warn (int *,char*) ;

void
fz_drop_zip_writer(fz_context *ctx, fz_zip_writer *zip)
{
 if (!zip)
  return;
 if (!zip->closed)
  fz_warn(ctx, "dropping unclosed zip writer");
 fz_drop_output(ctx, zip->output);
 fz_drop_buffer(ctx, zip->central);
 fz_free(ctx, zip);
}
