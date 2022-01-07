
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* authenticate_password ) (int *,TYPE_1__*,char const*) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*,char const*) ;

int
fz_authenticate_password(fz_context *ctx, fz_document *doc, const char *password)
{
 if (doc && doc->authenticate_password)
  return doc->authenticate_password(ctx, doc, password);
 return 1;
}
