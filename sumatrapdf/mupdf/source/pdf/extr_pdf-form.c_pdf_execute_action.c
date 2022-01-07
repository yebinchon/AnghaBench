
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int * pdf_dict_getp (int *,int *,char const*) ;
 int pdf_execute_action_chain (int *,int *,int *,char const*,int *) ;

__attribute__((used)) static void pdf_execute_action(fz_context *ctx, pdf_document *doc, pdf_obj *target, const char *path)
{
 pdf_obj *action = pdf_dict_getp(ctx, target, path);
 if (action)
  pdf_execute_action_chain(ctx, doc, target, path, action);
}
