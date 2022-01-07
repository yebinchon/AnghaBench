
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int outline; } ;
typedef TYPE_1__ html_document ;
typedef int fz_outline ;
typedef int fz_document ;
typedef int fz_context ;


 int * fz_keep_outline (int *,int ) ;

__attribute__((used)) static fz_outline *
htdoc_load_outline(fz_context *ctx, fz_document *doc_)
{
 html_document *doc = (html_document*)doc_;
 return fz_keep_outline(ctx, doc->outline);
}
