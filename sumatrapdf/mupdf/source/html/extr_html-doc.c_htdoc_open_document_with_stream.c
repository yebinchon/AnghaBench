
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_read_all (int *,int *,int ) ;
 int * htdoc_open_document_with_buffer (int *,char*,int ) ;

__attribute__((used)) static fz_document *
htdoc_open_document_with_stream(fz_context *ctx, fz_stream *file)
{
 return htdoc_open_document_with_buffer(ctx, ".", fz_read_all(ctx, file, 0));
}
