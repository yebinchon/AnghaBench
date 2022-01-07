
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mark {int loc; } ;
struct TYPE_4__ {int end; int q; int text; int p; } ;
struct TYPE_3__ {int key; scalar_t__ mod; int x; int y; TYPE_2__* focus; int dialog; scalar_t__ plain; scalar_t__ right; scalar_t__ middle; scalar_t__ down; } ;


 int DEFRES ;
 scalar_t__ GLUT_ACTIVE_ALT ;



 int KEY_F4 ;





 int auto_zoom () ;
 int auto_zoom_h () ;
 int auto_zoom_w () ;
 int canvas_h ;
 int canvas_w ;
 int clear_search () ;
 int ctx ;
 int currentaa ;
 int currenticc ;
 int currentinvert ;
 void* currentpage ;
 int currentrotate ;
 int currentseparations ;
 int currenttint ;
 int currentzoom ;
 int do_save_pdf_file () ;
 int doc ;
 scalar_t__ eqloc (int ,void*) ;
 int future_count ;
 void* fz_clamp_location (int ,int ,void*) ;
 int fz_last_page (int ,int ) ;
 int fz_make_location (int,int) ;
 int fz_maxi (int,int) ;
 void* fz_next_page (int ,int ,void*) ;
 void* fz_previous_page (int ,int ,void*) ;
 int glutLeaveMainLoop () ;
 int help_dialog ;
 int history_count ;
 int is_first_page (void*) ;
 int is_last_page (void*) ;
 int jump_to_location (int ) ;
 int jump_to_page (int) ;
 int layout_em ;
 struct mark* marks ;
 scalar_t__ nelem (struct mark*) ;
 int number ;
 int pop_future () ;
 int pop_history () ;
 int push_history () ;
 int relayout () ;
 int reload () ;
 int restore_mark (struct mark) ;
 struct mark save_mark () ;
 int scroll_x ;
 int scroll_y ;
 int search_active ;
 int search_dir ;
 int search_hit_page ;
 TYPE_2__ search_input ;
 int search_needle ;
 void* search_page ;
 int * selected_annot ;
 int set_zoom (int,int,int) ;
 int showform ;
 int showinfo ;
 int showlinks ;
 int showsearch ;
 int shrinkwrap () ;
 int smart_move_backward () ;
 int smart_move_forward () ;
 int toggle_annotate () ;
 int toggle_fullscreen () ;
 int toggle_outline () ;
 TYPE_1__ ui ;
 int zoom_in (int ) ;
 int zoom_out (int ) ;

__attribute__((used)) static void do_app(void)
{
 if (ui.key == KEY_F4 && ui.mod == GLUT_ACTIVE_ALT)
  glutLeaveMainLoop();

 if (ui.down || ui.middle || ui.right || ui.key)
  showinfo = 0;

 if (!ui.focus && ui.key && ui.plain)
 {
  switch (ui.key)
  {
  case 134: clear_search(); selected_annot = ((void*)0); break;
  case 133: ui.dialog = help_dialog; break;
  case 'a': toggle_annotate(); break;
  case 'o': toggle_outline(); break;
  case 'L': showlinks = !showlinks; break;
  case 'F': showform = !showform; break;
  case 'i': showinfo = !showinfo; break;
  case 'r': reload(); break;
  case 'q': glutLeaveMainLoop(); break;
  case 'S': do_save_pdf_file(); break;

  case '>': layout_em = number > 0 ? number : layout_em + 1; relayout(); break;
  case '<': layout_em = number > 0 ? number : layout_em - 1; relayout(); break;

  case 'C': currenttint = !currenttint; break;
  case 'I': currentinvert = !currentinvert; break;
  case 'e': currentseparations = !currentseparations; break;
  case 'E': currenticc = !currenticc; break;
  case 'f': toggle_fullscreen(); break;
  case 'w': shrinkwrap(); break;
  case 'W': auto_zoom_w(); break;
  case 'H': auto_zoom_h(); break;
  case 'Z': auto_zoom(); break;
  case 'z': set_zoom(number > 0 ? number : DEFRES, canvas_w/2, canvas_h/2); break;
  case '+': set_zoom(zoom_in(currentzoom), ui.x, ui.y); break;
  case '-': set_zoom(zoom_out(currentzoom), ui.x, ui.y); break;
  case '[': currentrotate -= 90; break;
  case ']': currentrotate += 90; break;
  case 'k': case 128: scroll_y -= 10; break;
  case 'j': case 135: scroll_y += 10; break;
  case 'h': case 132: scroll_x -= 10; break;
  case 'l': case 129: scroll_x += 10; break;

  case 'b': number = fz_maxi(number, 1); while (number--) smart_move_backward(); break;
  case ' ': number = fz_maxi(number, 1); while (number--) smart_move_forward(); break;
  case 'g': jump_to_page(number - 1); break;
  case 'G': jump_to_location(fz_last_page(ctx, doc)); break;

  case ',': case 130:
   number = fz_maxi(number, 1);
   while (number--)
    currentpage = fz_previous_page(ctx, doc, currentpage);
   break;
  case '.': case 131:
   number = fz_maxi(number, 1);
   while (number--)
    currentpage = fz_next_page(ctx, doc, currentpage);
   break;

  case 'A':
   if (number == 0)
    currentaa = (currentaa == 8 ? 0 : 8);
   else
    currentaa = number;
   break;

  case 'm':
   if (number == 0)
    push_history();
   else if (number > 0 && number < (int)nelem(marks))
    marks[number] = save_mark();
   break;
  case 't':
   if (number == 0)
   {
    if (history_count > 0)
     pop_history();
   }
   else if (number > 0 && number < (int)nelem(marks))
   {
    struct mark mark = marks[number];
    restore_mark(mark);
    jump_to_location(mark.loc);
   }
   break;
  case 'T':
   if (number == 0)
   {
    if (future_count > 0)
     pop_future();
   }
   break;

  case '/':
   clear_search();
   search_dir = 1;
   showsearch = 1;
   ui.focus = &search_input;
   search_input.p = search_input.text;
   search_input.q = search_input.end;
   break;
  case '?':
   clear_search();
   search_dir = -1;
   showsearch = 1;
   ui.focus = &search_input;
   search_input.p = search_input.text;
   search_input.q = search_input.end;
   break;
  case 'N':
   search_dir = -1;
   search_active = !!search_needle;
   if (eqloc(search_hit_page, currentpage))
   {
    search_page = fz_previous_page(ctx, doc, currentpage);
    if (is_first_page(search_page))
     search_active = 0;
   }
   else
   {
    search_page = currentpage;
   }
   search_hit_page = fz_make_location(-1, -1);
   break;
  case 'n':
   search_dir = 1;
   search_active = !!search_needle;
   if (eqloc(search_hit_page, currentpage))
   {
    search_page = fz_next_page(ctx, doc, currentpage);
    if (is_last_page(search_page))
     search_active = 0;
   }
   else
   {
    search_page = currentpage;
   }
   search_hit_page = fz_make_location(-1, -1);
   break;
  }

  if (ui.key >= '0' && ui.key <= '9')
   number = number * 10 + ui.key - '0';
  else
   number = 0;

  currentpage = fz_clamp_location(ctx, doc, currentpage);
  while (currentrotate < 0) currentrotate += 360;
  while (currentrotate >= 360) currentrotate -= 360;

  if (!eqloc(search_hit_page, currentpage))
   search_hit_page = fz_make_location(-1, -1);

  ui.key = 0;
 }
}
