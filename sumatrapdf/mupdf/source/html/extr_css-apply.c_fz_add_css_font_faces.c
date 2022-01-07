
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_html_font_set ;
struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ name; } ;
typedef TYPE_1__ fz_css_selector ;
struct TYPE_6__ {int loaded; int declaration; TYPE_1__* selector; struct TYPE_6__* next; } ;
typedef TYPE_2__ fz_css_rule ;
struct TYPE_7__ {TYPE_2__* rule; } ;
typedef TYPE_3__ fz_css ;
typedef int fz_context ;
typedef int fz_archive ;


 int fz_add_css_font_face (int *,int *,int *,char const*,int ) ;
 int strcmp (scalar_t__,char*) ;

void
fz_add_css_font_faces(fz_context *ctx, fz_html_font_set *set, fz_archive *zip, const char *base_uri, fz_css *css)
{
 fz_css_rule *rule;
 fz_css_selector *sel;

 for (rule = css->rule; rule; rule = rule->next)
 {
  if (!rule->loaded)
  {
   rule->loaded = 1;
   sel = rule->selector;
   while (sel)
   {
    if (sel->name && !strcmp(sel->name, "@font-face"))
    {
     fz_add_css_font_face(ctx, set, zip, base_uri, rule->declaration);
     break;
    }
    sel = sel->next;
   }
  }
 }
}
