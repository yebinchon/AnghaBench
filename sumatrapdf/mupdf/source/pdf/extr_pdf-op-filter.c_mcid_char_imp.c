
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pos; int * utf8; } ;
struct TYPE_4__ {TYPE_2__ actualtext; TYPE_2__ alt; int * mcid_obj; } ;
typedef TYPE_1__ tag_record ;
typedef int pdf_filter_processor ;
typedef int fz_context ;


 int ActualText ;
 int Alt ;
 int E ;
 int PDF_NAME (int ) ;
 int T ;
 int fz_free (int *,int *) ;
 int pdf_dict_del (int *,int *,int ) ;
 int pdf_drop_obj (int *,int *) ;
 int walk_string (int *,int,int,TYPE_2__*) ;

__attribute__((used)) static void
mcid_char_imp(fz_context *ctx, pdf_filter_processor *p, tag_record *tr, int uni, int remove)
{
 if (tr->mcid_obj == ((void*)0))

  return;

 if (remove)
 {

  pdf_dict_del(ctx, tr->mcid_obj, PDF_NAME(E));

  pdf_dict_del(ctx, tr->mcid_obj, PDF_NAME(T));
 }


 walk_string(ctx, uni, remove, &tr->alt);

 walk_string(ctx, uni, remove, &tr->actualtext);




 if (remove)
  remove = (tr->alt.pos == -1 || tr->actualtext.pos == -1);
 else if (tr->alt.pos >= 0 || tr->actualtext.pos >= 0)
 {

  remove = 0;
 }

 if (remove)
 {


  if (tr->actualtext.pos == -1)
   pdf_dict_del(ctx, tr->mcid_obj, PDF_NAME(ActualText));
  if (tr->alt.pos == -1)
   pdf_dict_del(ctx, tr->mcid_obj, PDF_NAME(Alt));
  pdf_drop_obj(ctx, tr->mcid_obj);
  tr->mcid_obj = ((void*)0);
  fz_free(ctx, tr->alt.utf8);
  tr->alt.utf8 = ((void*)0);
  fz_free(ctx, tr->actualtext.utf8);
  tr->actualtext.utf8 = ((void*)0);
 }
}
