
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int fz_location ;
struct TYPE_9__ {int page_h; } ;
typedef TYPE_1__ fz_html ;
typedef int fz_document ;
typedef int fz_context ;
struct TYPE_10__ {TYPE_3__* spine; } ;
typedef TYPE_2__ epub_document ;
struct TYPE_11__ {scalar_t__* path; struct TYPE_11__* next; } ;
typedef TYPE_3__ epub_chapter ;


 TYPE_1__* epub_get_laid_out_html (int *,TYPE_2__*,TYPE_3__*) ;
 int fz_drop_html (int *,TYPE_1__*) ;
 float fz_find_html_target (int *,TYPE_1__*,char const*) ;
 int fz_make_location (int,int) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int strncmp (scalar_t__*,char const*,size_t) ;

__attribute__((used)) static fz_location
epub_resolve_link(fz_context *ctx, fz_document *doc_, const char *dest, float *xp, float *yp)
{
 epub_document *doc = (epub_document*)doc_;
 epub_chapter *ch;
 int i;

 const char *s = strchr(dest, '#');
 size_t n = s ? (size_t)(s - dest) : strlen(dest);
 if (s && s[1] == 0)
  s = ((void*)0);

 for (i = 0, ch = doc->spine; ch; ++i, ch = ch->next)
 {
  if (!strncmp(ch->path, dest, n) && ch->path[n] == 0)
  {
   if (s)
   {
    float y;
    fz_html *html = epub_get_laid_out_html(ctx, doc, ch);
    int ph = html->page_h;


    y = fz_find_html_target(ctx, html, s+1);
    fz_drop_html(ctx, html);
    if (y >= 0)
    {
     int page = y / ph;
     if (yp) *yp = y - page * ph;
     return fz_make_location(i, page);
    }
    return fz_make_location(-1, -1);
   }
   return fz_make_location(i, 0);
  }
 }

 return fz_make_location(-1, -1);
}
