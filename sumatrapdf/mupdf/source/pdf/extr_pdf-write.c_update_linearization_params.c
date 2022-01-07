
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int start; scalar_t__ hintstream_len; int hints_length; scalar_t__ hints_shared_offset; int hints_s; scalar_t__ first_xref_entry_offset; int linear_t; scalar_t__ page_count; int linear_n; int linear_e; scalar_t__* ofs_list; scalar_t__ main_xref_offset; TYPE_2__* page_object_lists; int linear_o; int linear_h1; int linear_h0; scalar_t__ file_len; int linear_l; } ;
typedef TYPE_3__ pdf_write_state ;
typedef int pdf_document ;
typedef scalar_t__ int64_t ;
typedef int fz_context ;
struct TYPE_6__ {TYPE_1__** page; } ;
struct TYPE_5__ {scalar_t__* object; } ;


 int pdf_set_int (int *,int ,scalar_t__) ;
 int pdf_xref_len (int *,int *) ;

__attribute__((used)) static void
update_linearization_params(fz_context *ctx, pdf_document *doc, pdf_write_state *opts)
{
 int64_t offset;
 pdf_set_int(ctx, opts->linear_l, opts->file_len);

 pdf_set_int(ctx, opts->linear_h0, opts->ofs_list[pdf_xref_len(ctx, doc)-1]);

 offset = (opts->start == 1 ? opts->main_xref_offset : opts->ofs_list[1] + opts->hintstream_len);
 pdf_set_int(ctx, opts->linear_h1, offset - opts->ofs_list[pdf_xref_len(ctx, doc)-1]);

 pdf_set_int(ctx, opts->linear_o, opts->page_object_lists->page[0]->object[0]);




 offset = (opts->start == 1 ? opts->main_xref_offset : opts->ofs_list[1] + opts->hintstream_len);
 pdf_set_int(ctx, opts->linear_e, offset);

 pdf_set_int(ctx, opts->linear_n, opts->page_count);

 pdf_set_int(ctx, opts->linear_t, opts->first_xref_entry_offset + opts->hintstream_len);

 pdf_set_int(ctx, opts->hints_s, opts->hints_shared_offset);

 pdf_set_int(ctx, opts->hints_length, opts->hintstream_len);
}
