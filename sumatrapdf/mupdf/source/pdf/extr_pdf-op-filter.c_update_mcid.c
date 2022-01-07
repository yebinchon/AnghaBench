
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int utf8; scalar_t__ edited; } ;
struct TYPE_6__ {int utf8; scalar_t__ edited; } ;
struct TYPE_8__ {TYPE_2__ actualtext; int mcid_obj; TYPE_1__ alt; } ;
typedef TYPE_3__ tag_record ;
struct TYPE_9__ {TYPE_3__* current_tags; } ;
typedef TYPE_4__ pdf_filter_processor ;
typedef int fz_context ;


 int Alt ;
 int PDF_NAME (int ) ;
 int pdf_dict_put_text_string (int *,int ,int ,int ) ;

__attribute__((used)) static void
update_mcid(fz_context *ctx, pdf_filter_processor *p)
{
 tag_record *tag = p->current_tags;

 if (tag == ((void*)0))
  return;
 if (tag->alt.edited)
  pdf_dict_put_text_string(ctx, tag->mcid_obj, PDF_NAME(Alt), tag->alt.utf8);
 if (tag->actualtext.edited)
  pdf_dict_put_text_string(ctx, tag->mcid_obj, PDF_NAME(Alt), tag->actualtext.utf8);
}
