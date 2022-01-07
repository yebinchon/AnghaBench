
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_document ;
typedef int fz_context ;


 int * fz_open_accelerated_document_with_stream (int *,char const*,int *,int *) ;

fz_document *
fz_open_document_with_stream(fz_context *ctx, const char *magic, fz_stream *stream)
{
 return fz_open_accelerated_document_with_stream(ctx, magic, stream, ((void*)0));
}
