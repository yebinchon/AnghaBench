
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctx ;
 char* pdf_annot_author (int ,int ) ;
 scalar_t__ pdf_annot_has_author (int ,int ) ;
 int selected_annot ;
 scalar_t__ strlen (char const*) ;
 int ui_label (char*,char const*) ;

__attribute__((used)) static void do_annotate_author(void)
{
 if (pdf_annot_has_author(ctx, selected_annot))
 {
  const char *author = pdf_annot_author(ctx, selected_annot);
  if (strlen(author) > 0)
   ui_label("Author: %s", author);
 }
}
