
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_location ;
struct TYPE_5__ {int (* resolve_link ) (int *,TYPE_1__*,char const*,float*,float*) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int fz_ensure_layout (int *,TYPE_1__*) ;
 int fz_make_location (int,int) ;
 int stub1 (int *,TYPE_1__*,char const*,float*,float*) ;

fz_location
fz_resolve_link(fz_context *ctx, fz_document *doc, const char *uri, float *xp, float *yp)
{
 fz_ensure_layout(ctx, doc);
 if (xp) *xp = 0;
 if (yp) *yp = 0;
 if (doc && doc->resolve_link)
  return doc->resolve_link(ctx, doc, uri, xp, yp);
 return fz_make_location(-1, -1);
}
