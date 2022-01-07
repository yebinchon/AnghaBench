
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input {int text; } ;
typedef int pdf_annot ;


 scalar_t__ UI_INPUT_EDIT ;
 int ctx ;
 char* pdf_annot_contents (int ,int *) ;
 int pdf_set_annot_contents (int ,int *,int ) ;
 int * selected_annot ;
 scalar_t__ ui_input (struct input*,int ,int) ;
 int ui_input_init (struct input*,char const*) ;
 int ui_label (char*) ;

__attribute__((used)) static void do_annotate_contents(void)
{
 static pdf_annot *last_annot = ((void*)0);
 static struct input input;
 const char *contents;

 if (selected_annot != last_annot)
 {
  last_annot = selected_annot;
  contents = pdf_annot_contents(ctx, selected_annot);
  ui_input_init(&input, contents);
 }

 ui_label("Contents:");
 if (ui_input(&input, 0, 5) >= UI_INPUT_EDIT)
  pdf_set_annot_contents(ctx, selected_annot, input.text);
}
