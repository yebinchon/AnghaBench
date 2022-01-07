
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int do_tight; int * rev_renumber_map; int * renumber_map; int * gen_list; int * ofs_list; int * use_list; scalar_t__ list_len; int upwd_utf8; int opwd_utf8; int permissions; int main_xref_offset; scalar_t__ start; int do_encrypt; int do_clean; int do_linear; int do_garbage; int do_compress_fonts; int do_compress_images; int do_compress; int do_expand; int do_ascii; int do_incremental; } ;
typedef TYPE_1__ pdf_write_state ;
struct TYPE_7__ {int upwd_utf8; int opwd_utf8; int permissions; int do_encrypt; int do_clean; int do_linear; int do_garbage; int do_compress_fonts; int do_compress_images; int do_compress; int do_decompress; int do_pretty; int do_ascii; int do_incremental; } ;
typedef TYPE_2__ pdf_write_options ;
typedef int pdf_document ;
typedef int fz_context ;


 int INT_MIN ;
 int expand_lists (int *,TYPE_1__*,int) ;
 int memcpy (int ,int ,int ) ;
 int nelem (int ) ;
 int pdf_xref_len (int *,int *) ;

__attribute__((used)) static void initialise_write_state(fz_context *ctx, pdf_document *doc, const pdf_write_options *in_opts, pdf_write_state *opts)
{
 int xref_len = pdf_xref_len(ctx, doc);

 opts->do_incremental = in_opts->do_incremental;
 opts->do_ascii = in_opts->do_ascii;
 opts->do_tight = !in_opts->do_pretty;
 opts->do_expand = in_opts->do_decompress;
 opts->do_compress = in_opts->do_compress;
 opts->do_compress_images = in_opts->do_compress_images;
 opts->do_compress_fonts = in_opts->do_compress_fonts;

 opts->do_garbage = in_opts->do_garbage;
 opts->do_linear = in_opts->do_linear;
 opts->do_clean = in_opts->do_clean;
 opts->do_encrypt = in_opts->do_encrypt;
 opts->start = 0;
 opts->main_xref_offset = INT_MIN;

 opts->permissions = in_opts->permissions;
 memcpy(opts->opwd_utf8, in_opts->opwd_utf8, nelem(opts->opwd_utf8));
 memcpy(opts->upwd_utf8, in_opts->upwd_utf8, nelem(opts->upwd_utf8));




 opts->list_len = 0;
 opts->use_list = ((void*)0);
 opts->ofs_list = ((void*)0);
 opts->gen_list = ((void*)0);
 opts->renumber_map = ((void*)0);
 opts->rev_renumber_map = ((void*)0);

 expand_lists(ctx, opts, xref_len);
}
