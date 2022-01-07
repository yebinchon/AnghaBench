
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int do_ascii; scalar_t__ do_sanitize; scalar_t__ do_clean; } ;
typedef TYPE_1__ pdf_write_options ;
struct TYPE_8__ {int save_in_progress; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_context ;


 int clean_content_streams (int *,TYPE_2__*,scalar_t__,int ) ;
 int presize_unsaved_signature_byteranges (int *,TYPE_2__*) ;

__attribute__((used)) static void
prepare_for_save(fz_context *ctx, pdf_document *doc, pdf_write_options *in_opts)
{

 if (in_opts->do_clean || in_opts->do_sanitize)
  clean_content_streams(ctx, doc, in_opts->do_sanitize, in_opts->do_ascii);
 doc->save_in_progress = 1;

 presize_unsaved_signature_byteranges(ctx, doc);
}
