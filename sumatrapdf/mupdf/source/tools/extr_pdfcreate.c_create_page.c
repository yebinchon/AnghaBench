
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_stream ;
struct TYPE_3__ {int member_2; int member_3; void* y1; void* x1; void* y0; void* x0; int member_1; int member_0; } ;
typedef TYPE_1__ fz_rect ;
typedef int fz_buffer ;


 int FZ_ERROR_GENERIC ;
 int add_cjkfont_res (int *,char*,char*,char*,char*) ;
 int add_font_res (int *,char*,char*,char*) ;
 int add_image_res (int *,char*,char*) ;
 int ctx ;
 int doc ;
 int fz_append_byte (int ,int *,char) ;
 int fz_append_string (int ,int *,char*) ;
 void* fz_atoi (char*) ;
 int fz_drop_buffer (int ,int *) ;
 int fz_drop_stream (int ,int *) ;
 int * fz_new_buffer (int ,int) ;
 int * fz_open_file (int ,char*) ;
 scalar_t__ fz_read_line (int ,int *,char*,int) ;
 char* fz_strsep (char**,char*) ;
 int fz_throw (int ,int ,char*) ;
 int * pdf_add_page (int ,int ,TYPE_1__,int,int *,int *) ;
 int pdf_drop_obj (int ,int *) ;
 int pdf_insert_page (int ,int ,int,int *) ;
 int * pdf_new_dict (int ,int ,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void create_page(char *input)
{
 fz_rect mediabox = { 0, 0, 595, 842 };
 int rotate = 0;

 char line[4096];
 char *s, *p;
 fz_stream *stm;

 fz_buffer *contents;
 pdf_obj *resources;
 pdf_obj *page;

 resources = pdf_new_dict(ctx, doc, 2);
 contents = fz_new_buffer(ctx, 1024);

 stm = fz_open_file(ctx, input);
 while (fz_read_line(ctx, stm, line, sizeof line))
 {
  if (line[0] == '%' && line[1] == '%')
  {
   p = line;
   s = fz_strsep(&p, " ");
   if (!strcmp(s, "%%MediaBox"))
   {
    mediabox.x0 = fz_atoi(fz_strsep(&p, " "));
    mediabox.y0 = fz_atoi(fz_strsep(&p, " "));
    mediabox.x1 = fz_atoi(fz_strsep(&p, " "));
    mediabox.y1 = fz_atoi(fz_strsep(&p, " "));
   }
   else if (!strcmp(s, "%%Rotate"))
   {
    rotate = fz_atoi(fz_strsep(&p, " "));
   }
   else if (!strcmp(s, "%%Font"))
   {
    char *name = fz_strsep(&p, " ");
    char *path = fz_strsep(&p, " ");
    char *enc = fz_strsep(&p, " ");
    if (!name || !path)
     fz_throw(ctx, FZ_ERROR_GENERIC, "Font directive missing arguments");
    add_font_res(resources, name, path, enc);
   }
   else if (!strcmp(s, "%%CJKFont"))
   {
    char *name = fz_strsep(&p, " ");
    char *lang = fz_strsep(&p, " ");
    char *wmode = fz_strsep(&p, " ");
    char *style = fz_strsep(&p, " ");
    if (!name || !lang)
     fz_throw(ctx, FZ_ERROR_GENERIC, "CJKFont directive missing arguments");
    add_cjkfont_res(resources, name, lang, wmode, style);
   }
   else if (!strcmp(s, "%%Image"))
   {
    char *name = fz_strsep(&p, " ");
    char *path = fz_strsep(&p, " ");
    if (!name || !path)
     fz_throw(ctx, FZ_ERROR_GENERIC, "Image directive missing arguments");
    add_image_res(resources, name, path);
   }
  }
  else
  {
   fz_append_string(ctx, contents, line);
   fz_append_byte(ctx, contents, '\n');
  }
 }
 fz_drop_stream(ctx, stm);

 page = pdf_add_page(ctx, doc, mediabox, rotate, resources, contents);
 pdf_insert_page(ctx, doc, -1, page);
 pdf_drop_obj(ctx, page);

 fz_drop_buffer(ctx, contents);
 pdf_drop_obj(ctx, resources);
}
