
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_document_writer_end_page_fn ;
typedef int fz_document_writer_drop_writer_fn ;
typedef int fz_document_writer_close_writer_fn ;
typedef int fz_document_writer_begin_page_fn ;
struct TYPE_4__ {int * drop_writer; int * close_writer; int * end_page; int * begin_page; } ;
typedef TYPE_1__ fz_document_writer ;
typedef int fz_context ;


 TYPE_1__* Memento_label (int ,char*) ;
 int fz_calloc (int *,int,size_t) ;

fz_document_writer *fz_new_document_writer_of_size(fz_context *ctx, size_t size, fz_document_writer_begin_page_fn *begin_page,
 fz_document_writer_end_page_fn *end_page, fz_document_writer_close_writer_fn *close, fz_document_writer_drop_writer_fn *drop)
{
 fz_document_writer *wri = Memento_label(fz_calloc(ctx, 1, size), "fz_document_writer");

 wri->begin_page = begin_page;
 wri->end_page = end_page;
 wri->close_writer = close;
 wri->drop_writer = drop;

 return wri;
}
