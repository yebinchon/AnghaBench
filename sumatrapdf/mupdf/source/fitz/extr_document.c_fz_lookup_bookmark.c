
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_location ;
struct TYPE_4__ {int (* lookup_bookmark ) (int *,TYPE_1__*,int) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;
typedef int fz_bookmark ;


 int fz_make_location (int,int) ;
 int stub1 (int *,TYPE_1__*,int) ;

fz_location fz_lookup_bookmark(fz_context *ctx, fz_document *doc, fz_bookmark mark)
{
 if (doc && doc->lookup_bookmark)
  return doc->lookup_bookmark(ctx, doc, mark);
 return fz_make_location((mark>>16) & 0xffff, mark & 0xffff);
}
