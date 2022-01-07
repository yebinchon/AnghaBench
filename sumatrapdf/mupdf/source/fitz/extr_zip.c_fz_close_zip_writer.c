
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int count; int closed; int output; TYPE_1__* central; } ;
typedef TYPE_2__ fz_zip_writer ;
typedef int fz_context ;
struct TYPE_4__ {char* data; int len; } ;


 int ZIP_END_OF_CENTRAL_DIRECTORY_SIG ;
 int fz_close_output (int *,int ) ;
 scalar_t__ fz_tell_output (int *,int ) ;
 int fz_write_data (int *,int ,char*,int) ;
 int fz_write_int16_le (int *,int ,int) ;
 int fz_write_int32_le (int *,int ,int) ;

void
fz_close_zip_writer(fz_context *ctx, fz_zip_writer *zip)
{
 int64_t offset = fz_tell_output(ctx, zip->output);

 fz_write_data(ctx, zip->output, zip->central->data, zip->central->len);

 fz_write_int32_le(ctx, zip->output, ZIP_END_OF_CENTRAL_DIRECTORY_SIG);
 fz_write_int16_le(ctx, zip->output, 0);
 fz_write_int16_le(ctx, zip->output, 0);
 fz_write_int16_le(ctx, zip->output, zip->count);
 fz_write_int16_le(ctx, zip->output, zip->count);
 fz_write_int32_le(ctx, zip->output, (int)zip->central->len);
 fz_write_int32_le(ctx, zip->output, (int)offset);
 fz_write_int16_le(ctx, zip->output, 5);

 fz_write_data(ctx, zip->output, "MuPDF", 5);

 fz_close_output(ctx, zip->output);

 zip->closed = 1;
}
