
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;
typedef int fz_archive ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ fz_is_tar_archive (int *,int *) ;
 scalar_t__ fz_is_zip_archive (int *,int *) ;
 int * fz_open_tar_archive_with_stream (int *,int *) ;
 int * fz_open_zip_archive_with_stream (int *,int *) ;
 int fz_throw (int *,int ,char*) ;

fz_archive *
fz_open_archive_with_stream(fz_context *ctx, fz_stream *file)
{
 fz_archive *arch = ((void*)0);

 if (fz_is_zip_archive(ctx, file))
  arch = fz_open_zip_archive_with_stream(ctx, file);
 else if (fz_is_tar_archive(ctx, file))
  arch = fz_open_tar_archive_with_stream(ctx, file);
 else
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot recognize archive");

 return arch;
}
