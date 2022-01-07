
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* prev; } ;
typedef TYPE_1__ tag_record ;
struct TYPE_7__ {TYPE_1__* current_tags; TYPE_1__* pending_tags; } ;
typedef TYPE_2__ pdf_filter_processor ;
typedef int fz_context ;


 int mcid_char_imp (int *,TYPE_2__*,TYPE_1__*,int,int) ;

__attribute__((used)) static void
mcid_char(fz_context *ctx, pdf_filter_processor *p, int uni, int remove)
{
 tag_record *tr = p->pending_tags;

 for (tr = p->pending_tags; tr != ((void*)0); tr = tr->prev)
  mcid_char_imp(ctx, p, tr, uni, remove);
 for (tr = p->current_tags; tr != ((void*)0); tr = tr->prev)
  mcid_char_imp(ctx, p, tr, uni, remove);
}
