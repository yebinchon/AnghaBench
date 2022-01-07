
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_3__ {int new_rdb; int old_rdb; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_context ;


 int * pdf_dict_get (int *,int ,int *) ;
 int * pdf_dict_gets (int *,int *,char const*) ;
 int pdf_dict_put_drop (int *,int ,int *,int *) ;
 int pdf_dict_putp (int *,int *,char const*,int *) ;
 int pdf_get_bound_document (int *,int ) ;
 int * pdf_new_dict (int *,int ,int) ;

__attribute__((used)) static void
copy_resource(fz_context *ctx, pdf_filter_processor *p, pdf_obj *key, const char *name)
{
 pdf_obj *res, *obj;

 if (!name || name[0] == 0)
  return;

 res = pdf_dict_get(ctx, p->old_rdb, key);
 obj = pdf_dict_gets(ctx, res, name);
 if (obj)
 {
  res = pdf_dict_get(ctx, p->new_rdb, key);
  if (!res)
  {
   res = pdf_new_dict(ctx, pdf_get_bound_document(ctx, p->new_rdb), 1);
   pdf_dict_put_drop(ctx, p->new_rdb, key, res);
  }
  pdf_dict_putp(ctx, res, name, obj);
 }
}
