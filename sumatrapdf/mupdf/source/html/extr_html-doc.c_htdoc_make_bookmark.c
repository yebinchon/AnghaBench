
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int html; } ;
typedef TYPE_1__ html_document ;
struct TYPE_5__ {int page; } ;
typedef TYPE_2__ fz_location ;
typedef int fz_document ;
typedef int fz_context ;
typedef int fz_bookmark ;


 int fz_make_html_bookmark (int *,int ,int ) ;

__attribute__((used)) static fz_bookmark
htdoc_make_bookmark(fz_context *ctx, fz_document *doc_, fz_location loc)
{
 html_document *doc = (html_document*)doc_;
 return fz_make_html_bookmark(ctx, doc->html, loc.page);
}
