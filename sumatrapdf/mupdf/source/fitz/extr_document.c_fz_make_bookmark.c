
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int chapter; scalar_t__ page; } ;
typedef TYPE_1__ fz_location ;
struct TYPE_8__ {scalar_t__ (* make_bookmark ) (int *,TYPE_2__*,TYPE_1__) ;} ;
typedef TYPE_2__ fz_document ;
typedef int fz_context ;
typedef scalar_t__ fz_bookmark ;


 scalar_t__ stub1 (int *,TYPE_2__*,TYPE_1__) ;

fz_bookmark fz_make_bookmark(fz_context *ctx, fz_document *doc, fz_location loc)
{
 if (doc && doc->make_bookmark)
  return doc->make_bookmark(ctx, doc, loc);
 return (loc.chapter<<16) + loc.page;
}
