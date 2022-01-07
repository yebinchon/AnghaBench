
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* needs_password ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*) ;

int
fz_needs_password(fz_context *ctx, fz_document *doc)
{
 if (doc && doc->needs_password)
  return doc->needs_password(ctx, doc);
 return 0;
}
