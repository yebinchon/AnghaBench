
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_document ;
typedef int fz_context ;


 int * epub_init (int *,int ,int *) ;
 int fz_open_zip_archive_with_stream (int *,int *) ;

__attribute__((used)) static fz_document *
epub_open_document_with_stream(fz_context *ctx, fz_stream *file, fz_stream *accel)
{
 return epub_init(ctx, fz_open_zip_archive_with_stream(ctx, file), accel);
}
