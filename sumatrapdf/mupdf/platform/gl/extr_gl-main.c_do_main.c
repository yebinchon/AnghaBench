
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int page; int chapter; } ;
struct TYPE_11__ {scalar_t__ key; scalar_t__ mod; scalar_t__ plain; scalar_t__ right; scalar_t__ middle; scalar_t__ down; } ;


 int BOTH ;
 int GLUT_ELAPSED_TIME ;
 scalar_t__ KEY_ESCAPE ;
 int NW ;
 int R ;
 int annotate_w ;
 int ctx ;
 scalar_t__ currenticc ;
 int currentpage ;
 scalar_t__ currentseparations ;
 int do_annotate_panel () ;
 int do_app () ;
 int do_canvas () ;
 int do_info () ;
 int do_outline (int ) ;
 int doc ;
 int eqloc (int ,int ) ;
 TYPE_2__ fz_next_page (int ,int ,TYPE_2__) ;
 TYPE_2__ fz_previous_page (int ,int ,TYPE_2__) ;
 scalar_t__ fz_search_chapter_page_number (int ,int ,int ,int ,int ,int ,int ) ;
 int glutGet (int ) ;
 int glutPostRedisplay () ;
 scalar_t__ is_first_page (TYPE_2__) ;
 scalar_t__ is_last_page (TYPE_2__) ;
 int jump_to_location (TYPE_2__) ;
 int load_page () ;
 int nelem (int ) ;
 scalar_t__ oldicc ;
 int oldpage ;
 scalar_t__ oldseparations ;
 int outline ;
 scalar_t__ search_active ;
 scalar_t__ search_dir ;
 scalar_t__ search_hit_count ;
 TYPE_2__ search_hit_page ;
 int search_hit_quads ;
 int search_needle ;
 TYPE_2__ search_page ;
 scalar_t__ showannotate ;
 scalar_t__ showinfo ;
 scalar_t__ showoutline ;
 TYPE_1__ ui ;
 int ui_layout (int ,int ,int ,int ,int ) ;
 int ui_panel_begin (int ,int ,int,int,int) ;
 int ui_panel_end () ;
 int update_title () ;

void do_main(void)
{
 if (search_active)
 {
  int start_time = glutGet(GLUT_ELAPSED_TIME);

  if (ui.key == KEY_ESCAPE)
   search_active = 0;


  ui.key = ui.mod = ui.plain = 0;
  ui.down = ui.middle = ui.right = 0;

  while (search_active && glutGet(GLUT_ELAPSED_TIME) < start_time + 200)
  {
   search_hit_count = fz_search_chapter_page_number(ctx, doc,
    search_page.chapter, search_page.page,
    search_needle,
    search_hit_quads, nelem(search_hit_quads));
   if (search_hit_count)
   {
    search_active = 0;
    search_hit_page = search_page;
    jump_to_location(search_hit_page);
   }
   else
   {
    if (search_dir > 0)
    {
     if (is_last_page(search_page))
      search_active = 0;
     else
      search_page = fz_next_page(ctx, doc, search_page);
    }
    else
    {
     if (is_first_page(search_page))
      search_active = 0;
     else
      search_page = fz_previous_page(ctx, doc, search_page);
    }
   }
  }


  if (search_active)
   glutPostRedisplay();
 }

 do_app();

 if (showoutline)
  do_outline(outline);

 if (!eqloc(oldpage, currentpage) || oldseparations != currentseparations || oldicc != currenticc)
 {
  load_page();
  update_title();
 }

 if (showannotate)
 {
  ui_layout(R, BOTH, NW, 0, 0);
  ui_panel_begin(annotate_w, 0, 4, 4, 1);
  do_annotate_panel();
  ui_panel_end();
 }

 do_canvas();

 if (showinfo)
  do_info();
}
