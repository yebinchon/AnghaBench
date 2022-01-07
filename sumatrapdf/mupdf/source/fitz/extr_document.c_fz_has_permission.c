
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_permission ;
struct TYPE_4__ {int (* has_permission ) (int *,TYPE_1__*,int ) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*,int ) ;

int
fz_has_permission(fz_context *ctx, fz_document *doc, fz_permission p)
{
 if (doc && doc->has_permission)
  return doc->has_permission(ctx, doc, p);
 return 1;
}
