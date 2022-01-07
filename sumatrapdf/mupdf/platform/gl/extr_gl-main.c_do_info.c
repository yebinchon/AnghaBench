
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct TYPE_3__ {int lineheight; } ;


 char* FZ_META_ENCRYPTION ;
 char* FZ_META_FORMAT ;
 char* FZ_META_INFO_AUTHOR ;
 char* FZ_META_INFO_TITLE ;
 int FZ_PERMISSION_ANNOTATE ;
 int FZ_PERMISSION_COPY ;
 int FZ_PERMISSION_EDIT ;
 int FZ_PERMISSION_PRINT ;
 int T ;
 int W ;
 int X ;
 int ctx ;
 scalar_t__ currenticc ;
 int currentpage ;
 scalar_t__ currentseparations ;
 int doc ;
 int fz_count_pages (int ,int ) ;
 scalar_t__ fz_has_permission (int ,int ,int ) ;
 scalar_t__ fz_lookup_metadata (int ,int ,char*,char*,int) ;
 int fz_page_number_from_location (int ,int ,int ) ;
 int fz_strlcat (char*,char*,int) ;
 TYPE_2__ page_bounds ;
 char* paper_size_name (int,int) ;
 scalar_t__ pdf_specifics (int ,int ) ;
 int strlen (char*) ;
 TYPE_1__ ui ;
 int ui_dialog_begin (int,int) ;
 int ui_dialog_end () ;
 int ui_label (char*,...) ;
 int ui_layout (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void do_info(void)
{
 char buf[100];

 ui_dialog_begin(500, 14 * ui.lineheight);
 ui_layout(T, X, W, 0, 0);

 if (fz_lookup_metadata(ctx, doc, FZ_META_INFO_TITLE, buf, sizeof buf) > 0)
  ui_label("Title: %s", buf);
 if (fz_lookup_metadata(ctx, doc, FZ_META_INFO_AUTHOR, buf, sizeof buf) > 0)
  ui_label("Author: %s", buf);
 if (fz_lookup_metadata(ctx, doc, FZ_META_FORMAT, buf, sizeof buf) > 0)
  ui_label("Format: %s", buf);
 if (fz_lookup_metadata(ctx, doc, FZ_META_ENCRYPTION, buf, sizeof buf) > 0)
  ui_label("Encryption: %s", buf);
 if (pdf_specifics(ctx, doc))
 {
  if (fz_lookup_metadata(ctx, doc, "info:Creator", buf, sizeof buf) > 0)
   ui_label("PDF Creator: %s", buf);
  if (fz_lookup_metadata(ctx, doc, "info:Producer", buf, sizeof buf) > 0)
   ui_label("PDF Producer: %s", buf);
  buf[0] = 0;
  if (fz_has_permission(ctx, doc, FZ_PERMISSION_PRINT))
   fz_strlcat(buf, "print, ", sizeof buf);
  if (fz_has_permission(ctx, doc, FZ_PERMISSION_COPY))
   fz_strlcat(buf, "copy, ", sizeof buf);
  if (fz_has_permission(ctx, doc, FZ_PERMISSION_EDIT))
   fz_strlcat(buf, "edit, ", sizeof buf);
  if (fz_has_permission(ctx, doc, FZ_PERMISSION_ANNOTATE))
   fz_strlcat(buf, "annotate, ", sizeof buf);
  if (strlen(buf) > 2)
   buf[strlen(buf)-2] = 0;
  else
   fz_strlcat(buf, "none", sizeof buf);
  ui_label("Permissions: %s", buf);
 }
 ui_label("Page: %d / %d", fz_page_number_from_location(ctx, doc, currentpage)+1, fz_count_pages(ctx, doc));
 {
  int w = (int)(page_bounds.x1 - page_bounds.x0 + 0.5f);
  int h = (int)(page_bounds.y1 - page_bounds.y0 + 0.5f);
  const char *size = paper_size_name(w, h);
  if (!size)
   size = paper_size_name(h, w);
  if (size)
   ui_label("Size: %d x %d (%s)", w, h, size);
  else
   ui_label("Size: %d x %d", w, h);
 }
 ui_label("ICC rendering: %s.", currenticc ? "on" : "off");
 ui_label("Spot rendering: %s.", currentseparations ? "on" : "off");

 ui_dialog_end();
}
