
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_2__ {int n; } ;


 int FZ_ERROR_GENERIC ;
 TYPE_1__* NAME (int *) ;
 int OBJ_IS_NAME (int *) ;
 int * PDF_LIMIT ;
 int * PDF_NAME_LIST ;
 int fz_throw (int *,int ,char*,int ) ;
 int pdf_dict_dels (int *,int *,int ) ;
 int pdf_objkindstr (int *) ;

void
pdf_dict_del(fz_context *ctx, pdf_obj *obj, pdf_obj *key)
{
 if (!OBJ_IS_NAME(key))
  fz_throw(ctx, FZ_ERROR_GENERIC, "key is not a name (%s)", pdf_objkindstr(key));

 if (key < PDF_LIMIT)
  pdf_dict_dels(ctx, obj, PDF_NAME_LIST[(intptr_t)key]);
 else
  pdf_dict_dels(ctx, obj, NAME(key)->n);
}
