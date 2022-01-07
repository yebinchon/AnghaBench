
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int offset; } ;
typedef TYPE_2__ zip_entry ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int * file; } ;
struct TYPE_8__ {TYPE_1__ super; } ;
typedef TYPE_3__ fz_zip_archive ;
typedef int fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int ZIP_ENCRYPTED_FLAG ;
 scalar_t__ ZIP_LOCAL_FILE_SIG ;
 int fz_read_uint16_le (int *,int *) ;
 scalar_t__ fz_read_uint32_le (int *,int *) ;
 int fz_seek (int *,int *,int,int) ;
 int fz_throw (int *,int ,char*,...) ;

__attribute__((used)) static int read_zip_entry_header(fz_context *ctx, fz_zip_archive *zip, zip_entry *ent)
{
 fz_stream *file = zip->super.file;
 uint32_t sig;
 int general, method, namelength, extralength;

 fz_seek(ctx, file, ent->offset, 0);

 sig = fz_read_uint32_le(ctx, file);
 if (sig != ZIP_LOCAL_FILE_SIG)
  fz_throw(ctx, FZ_ERROR_GENERIC, "wrong zip local file signature (0x%x)", sig);

 (void) fz_read_uint16_le(ctx, file);
 general = fz_read_uint16_le(ctx, file);
 if (general & ZIP_ENCRYPTED_FLAG)
  fz_throw(ctx, FZ_ERROR_GENERIC, "zip content is encrypted");

 method = fz_read_uint16_le(ctx, file);
 (void) fz_read_uint16_le(ctx, file);
 (void) fz_read_uint16_le(ctx, file);
 (void) fz_read_uint32_le(ctx, file);
 (void) fz_read_uint32_le(ctx, file);
 (void) fz_read_uint32_le(ctx, file);
 namelength = fz_read_uint16_le(ctx, file);
 extralength = fz_read_uint16_le(ctx, file);

 fz_seek(ctx, file, namelength + extralength, 1);

 return method;
}
