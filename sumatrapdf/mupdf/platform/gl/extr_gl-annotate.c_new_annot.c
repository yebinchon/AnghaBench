
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctx ;
 int getuser () ;
 int is_draw_mode ;
 int page ;
 scalar_t__ pdf_annot_has_author (int ,int ) ;
 int pdf_create_annot (int ,int ,int) ;
 int pdf_set_annot_author (int ,int ,int ) ;
 int pdf_set_annot_modification_date (int ,int ,int ) ;
 int pdf_update_appearance (int ,int ) ;
 int render_page () ;
 int selected_annot ;
 int time (int *) ;

__attribute__((used)) static void new_annot(int type)
{
 selected_annot = pdf_create_annot(ctx, page, type);

 pdf_set_annot_modification_date(ctx, selected_annot, time(((void*)0)));
 if (pdf_annot_has_author(ctx, selected_annot))
  pdf_set_annot_author(ctx, selected_annot, getuser());

 pdf_update_appearance(ctx, selected_annot);

 switch (type)
 {
 case 134:
 case 133:
 case 132:
 case 135:
 case 128:
 case 129:
 case 130:
 case 131:
  is_draw_mode = 1;
  break;
 }

 render_page();
}
