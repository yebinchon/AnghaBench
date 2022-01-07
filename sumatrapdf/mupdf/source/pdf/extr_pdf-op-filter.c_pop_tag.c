
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* utf8; } ;
struct TYPE_6__ {TYPE_3__* utf8; } ;
struct TYPE_8__ {int mcid_obj; TYPE_2__ actualtext; TYPE_1__ alt; int cooked; int raw; scalar_t__ bdc; struct TYPE_8__* tag; struct TYPE_8__* prev; } ;
typedef TYPE_3__ tag_record ;
typedef int pdf_filter_processor ;
typedef int fz_context ;


 int fz_free (int *,TYPE_3__*) ;
 int pdf_drop_obj (int *,int ) ;

__attribute__((used)) static void
pop_tag(fz_context *ctx, pdf_filter_processor *p, tag_record **tags)
{
 tag_record *tag = *tags;

 if (tag == ((void*)0))
  return;
 *tags = tag->prev;
 fz_free(ctx, tag->tag);
 if (tag->bdc)
 {
  pdf_drop_obj(ctx, tag->raw);
  pdf_drop_obj(ctx, tag->cooked);
 }
 fz_free(ctx, tag->alt.utf8);
 fz_free(ctx, tag->actualtext.utf8);
 pdf_drop_obj(ctx, tag->mcid_obj);
 fz_free(ctx, tag);
}
