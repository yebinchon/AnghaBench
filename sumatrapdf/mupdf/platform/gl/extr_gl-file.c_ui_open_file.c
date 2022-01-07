
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* text; } ;
struct TYPE_8__ {size_t selected; int count; int list_dir; int curdir; TYPE_1__* files; TYPE_2__ input_dir; } ;
struct TYPE_7__ {scalar_t__ key; int * active; int focus; int gridsize; } ;
struct TYPE_5__ {char const* name; scalar_t__ is_dir; } ;


 int ALL ;
 int B ;
 int BOTH ;
 int CENTER ;
 int GLUT_ELAPSED_TIME ;
 int ICON_DOCUMENT ;
 int ICON_FOLDER ;
 scalar_t__ KEY_ENTER ;
 scalar_t__ KEY_ESCAPE ;
 int L ;
 int NONE ;
 int NW ;
 int PATH_MAX ;
 int R ;
 int T ;
 scalar_t__ UI_INPUT_ACCEPT ;
 int X ;
 int Y ;
 TYPE_4__ fc ;
 int fz_snprintf (char*,int,char*,int ,char const*) ;
 int glutGet (int ) ;
 int list_drives () ;
 int load_dir (char*) ;
 TYPE_3__ ui ;
 scalar_t__ ui_button (char*) ;
 scalar_t__ ui_input (TYPE_2__*,int ,int) ;
 int ui_layout (int ,int ,int ,int,int) ;
 int ui_list_begin (int *,int,int ,int ) ;
 int ui_list_end (int *) ;
 scalar_t__ ui_list_item (int *,TYPE_1__*,char*,int) ;
 int ui_panel_begin (int,int ,int,int,int) ;
 int ui_panel_end () ;
 int ui_spacer () ;

int ui_open_file(char filename[PATH_MAX])
{
 static int last_click_time = 0;
 static int last_click_sel = -1;
 int i, rv = 0;

 ui_panel_begin(0, 0, 4, 4, 1);
 {
  ui_layout(L, Y, NW, 0, 0);
  ui_panel_begin(150, 0, 0, 0, 0);
  {
   ui_layout(T, X, NW, 2, 2);
   list_drives();
   ui_layout(B, X, NW, 2, 2);
   if (ui_button("Cancel") || (!ui.focus && ui.key == KEY_ESCAPE))
   {
    filename[0] = 0;
    rv = 1;
   }
  }
  ui_panel_end();

  ui_layout(T, X, NW, 2, 2);
  ui_panel_begin(0, ui.gridsize, 0, 0, 0);
  {
   if (fc.selected >= 0)
   {
    ui_layout(R, NONE, CENTER, 0, 0);
    if (ui_button("Open") || (!ui.focus && ui.key == KEY_ENTER))
    {
     fz_snprintf(filename, PATH_MAX, "%s/%s", fc.curdir, fc.files[fc.selected].name);
     rv = 1;
    }
    ui_spacer();
   }
   ui_layout(ALL, X, CENTER, 0, 0);
   if (ui_input(&fc.input_dir, 0, 1) == UI_INPUT_ACCEPT)
    load_dir(fc.input_dir.text);
  }
  ui_panel_end();

  ui_layout(ALL, BOTH, NW, 2, 2);
  ui_list_begin(&fc.list_dir, fc.count, 0, 0);
  for (i = 0; i < fc.count; ++i)
  {
   const char *name = fc.files[i].name;
   char buf[PATH_MAX];
   if (fc.files[i].is_dir)
    fz_snprintf(buf, sizeof buf, "%C %s", ICON_FOLDER, name);
   else
    fz_snprintf(buf, sizeof buf, "%C %s", ICON_DOCUMENT, name);
   if (ui_list_item(&fc.list_dir, &fc.files[i], buf, i==fc.selected))
   {
    fc.selected = i;
    if (fc.files[i].is_dir)
    {
     fz_snprintf(buf, sizeof buf, "%s/%s", fc.curdir, name);
     load_dir(buf);
     ui.active = ((void*)0);
     last_click_sel = -1;
    }
    else
    {
     int click_time = glutGet(GLUT_ELAPSED_TIME);
     if (i == last_click_sel && click_time < last_click_time + 250)
     {
      fz_snprintf(filename, PATH_MAX, "%s/%s", fc.curdir, name);
      rv = 1;
     }
     last_click_time = click_time;
     last_click_sel = i;
    }
   }
  }
  ui_list_end(&fc.list_dir);
 }
 ui_panel_end();

 return rv;
}
