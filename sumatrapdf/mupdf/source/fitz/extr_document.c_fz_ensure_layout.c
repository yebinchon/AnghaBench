
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int did_layout; int (* layout ) (int *,TYPE_1__*,int ,int ,int ) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int DEFEM ;
 int DEFH ;
 int DEFW ;
 int stub1 (int *,TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
fz_ensure_layout(fz_context *ctx, fz_document *doc)
{
 if (doc && doc->layout && !doc->did_layout)
 {
  doc->layout(ctx, doc, DEFW, DEFH, DEFEM);
  doc->did_layout = 1;
 }
}
