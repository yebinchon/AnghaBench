
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int needs_new_ap; TYPE_2__* page; } ;
typedef TYPE_3__ pdf_annot ;
typedef int fz_context ;
struct TYPE_6__ {TYPE_1__* doc; } ;
struct TYPE_5__ {int dirty; } ;



void
pdf_dirty_annot(fz_context *ctx, pdf_annot *annot)
{
 annot->needs_new_ap = 1;
 if (annot->page && annot->page->doc)
  annot->page->doc->dirty = 1;
}
