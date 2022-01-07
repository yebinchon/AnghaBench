
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_5__ {int count; int output; int central; } ;
typedef TYPE_1__ fz_zip_writer ;
typedef int fz_context ;
struct TYPE_6__ {char const* data; scalar_t__ len; } ;
typedef TYPE_2__ fz_buffer ;


 int ZIP_CENTRAL_DIRECTORY_SIG ;
 int ZIP_LOCAL_FILE_SIG ;
 int crc32 (int,char const*,int ) ;
 int fz_append_int16_le (int *,int ,int) ;
 int fz_append_int32_le (int *,int ,int) ;
 int fz_append_string (int *,int ,char const*) ;
 int fz_tell_output (int *,int ) ;
 int fz_write_data (int *,int ,char const*,scalar_t__) ;
 int fz_write_int16_le (int *,int ,int) ;
 int fz_write_int32_le (int *,int ,int) ;
 scalar_t__ strlen (char const*) ;

void
fz_write_zip_entry(fz_context *ctx, fz_zip_writer *zip, const char *name, fz_buffer *buf, int compress)
{
 int offset = fz_tell_output(ctx, zip->output);
 int sum;

 sum = crc32(0, ((void*)0), 0);
 sum = crc32(sum, buf->data, (uInt)buf->len);

 fz_append_int32_le(ctx, zip->central, ZIP_CENTRAL_DIRECTORY_SIG);
 fz_append_int16_le(ctx, zip->central, 0);
 fz_append_int16_le(ctx, zip->central, 20);
 fz_append_int16_le(ctx, zip->central, 0);
 fz_append_int16_le(ctx, zip->central, 0);
 fz_append_int16_le(ctx, zip->central, 0);
 fz_append_int16_le(ctx, zip->central, 0);
 fz_append_int32_le(ctx, zip->central, sum);
 fz_append_int32_le(ctx, zip->central, (int)buf->len);
 fz_append_int32_le(ctx, zip->central, (int)buf->len);
 fz_append_int16_le(ctx, zip->central, (int)strlen(name));
 fz_append_int16_le(ctx, zip->central, 0);
 fz_append_int16_le(ctx, zip->central, 0);
 fz_append_int16_le(ctx, zip->central, 0);
 fz_append_int16_le(ctx, zip->central, 0);
 fz_append_int32_le(ctx, zip->central, 0);
 fz_append_int32_le(ctx, zip->central, offset);
 fz_append_string(ctx, zip->central, name);

 fz_write_int32_le(ctx, zip->output, ZIP_LOCAL_FILE_SIG);
 fz_write_int16_le(ctx, zip->output, 20);
 fz_write_int16_le(ctx, zip->output, 0);
 fz_write_int16_le(ctx, zip->output, 0);
 fz_write_int16_le(ctx, zip->output, 0);
 fz_write_int16_le(ctx, zip->output, 0);
 fz_write_int32_le(ctx, zip->output, sum);
 fz_write_int32_le(ctx, zip->output, (int)buf->len);
 fz_write_int32_le(ctx, zip->output, (int)buf->len);
 fz_write_int16_le(ctx, zip->output, (int)strlen(name));
 fz_write_int16_le(ctx, zip->output, 0);
 fz_write_data(ctx, zip->output, name, strlen(name));
 fz_write_data(ctx, zip->output, buf->data, buf->len);

 ++zip->count;
}
