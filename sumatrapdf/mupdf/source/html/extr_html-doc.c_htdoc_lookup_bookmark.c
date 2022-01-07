
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int html; } ;
typedef TYPE_1__ html_document ;
typedef int fz_location ;
typedef int fz_document ;
typedef int fz_context ;
typedef int fz_bookmark ;


 int fz_lookup_html_bookmark (int *,int ,int ) ;
 int fz_make_location (int ,int ) ;

__attribute__((used)) static fz_location
htdoc_lookup_bookmark(fz_context *ctx, fz_document *doc_, fz_bookmark mark)
{
 html_document *doc = (html_document*)doc_;
 return fz_make_location(0, fz_lookup_html_bookmark(ctx, doc->html, mark));
}
