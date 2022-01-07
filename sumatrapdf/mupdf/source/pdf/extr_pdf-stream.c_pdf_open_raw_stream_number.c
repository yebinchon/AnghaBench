
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ stm_ofs; int obj; } ;
typedef TYPE_1__ pdf_xref_entry ;
struct TYPE_9__ {int file; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*,...) ;
 TYPE_1__* pdf_cache_object (int *,TYPE_2__*,int) ;
 int * pdf_open_raw_filter (int *,int ,TYPE_2__*,int ,int,int*,int*,scalar_t__) ;
 int pdf_xref_len (int *,TYPE_2__*) ;

fz_stream *
pdf_open_raw_stream_number(fz_context *ctx, pdf_document *doc, int num)
{
 pdf_xref_entry *x;
 int orig_num, orig_gen;

 if (num <= 0 || num >= pdf_xref_len(ctx, doc))
  fz_throw(ctx, FZ_ERROR_GENERIC, "object id out of range (%d 0 R)", num);

 x = pdf_cache_object(ctx, doc, num);
 if (x->stm_ofs == 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "object is not a stream");

 return pdf_open_raw_filter(ctx, doc->file, doc, x->obj, num, &orig_num, &orig_gen, x->stm_ofs);
}
