
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int * file; } ;
struct TYPE_6__ {TYPE_1__ super; } ;
typedef TYPE_2__ fz_zip_archive ;
typedef int fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int SEEK_END ;
 size_t fz_minz (size_t,int) ;
 size_t fz_read (int *,int *,unsigned char*,int) ;
 int fz_seek (int *,int *,int ,int ) ;
 size_t fz_tell (int *,int *) ;
 int fz_throw (int *,int ,char*) ;
 int memcmp (unsigned char*,char*,int) ;
 int read_zip_dir_imp (int *,TYPE_2__*,size_t) ;

__attribute__((used)) static void ensure_zip_entries(fz_context *ctx, fz_zip_archive *zip)
{
 fz_stream *file = zip->super.file;
 unsigned char buf[512];
 size_t size, back, maxback;
 size_t i, n;

 fz_seek(ctx, file, 0, SEEK_END);
 size = fz_tell(ctx, file);

 maxback = fz_minz(size, 0xFFFF + sizeof buf);
 back = fz_minz(maxback, sizeof buf);

 while (back <= maxback)
 {
  fz_seek(ctx, file, (int64_t)(size - back), 0);
  n = fz_read(ctx, file, buf, sizeof buf);
  if (n < 4)
   break;
  for (i = n - 4; i > 0; i--)
   if (!memcmp(buf + i, "PK\5\6", 4))
   {
    read_zip_dir_imp(ctx, zip, size - back + i);
    return;
   }
  back += sizeof buf - 4;
 }

 fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find end of central directory");
}
