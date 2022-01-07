
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_stream ;
typedef int fz_context ;
typedef int fz_compression_params ;


 int * build_filter_chain_drop (int *,int ,int *,int *,int *,int,int,int *) ;
 int fz_keep_stream (int *,int *) ;

__attribute__((used)) static fz_stream *
build_filter_chain(fz_context *ctx, fz_stream *chain, pdf_document *doc, pdf_obj *fs, pdf_obj *ps, int num, int gen, fz_compression_params *params)
{
 return build_filter_chain_drop(ctx, fz_keep_stream(ctx, chain), doc, fs, ps, num, gen, params);
}
