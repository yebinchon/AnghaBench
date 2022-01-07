
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* text; } ;
struct TYPE_9__ {int count; int selected; int list_dir; TYPE_2__ input_file; int curdir; TYPE_1__* files; TYPE_2__ input_dir; } ;
struct TYPE_8__ {scalar_t__ key; int * active; int gridsize; int focus; } ;
struct TYPE_6__ {char* name; scalar_t__ is_dir; } ;


 int ALL ;
 int B ;
 int BOTH ;
 int CENTER ;
 int ICON_DOCUMENT ;
 int ICON_FOLDER ;
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
 int bump_file_version (int) ;
 TYPE_5__ fc ;
 int fz_snprintf (char*,int,char*,int ,char const*) ;
 int list_drives () ;
 int load_dir (char*) ;
 TYPE_4__ ui ;
 scalar_t__ ui_button (char*) ;
 scalar_t__ ui_input (TYPE_2__*,int ,int) ;
 int ui_input_init (TYPE_2__*,char const*) ;
 int ui_layout (int ,int ,int ,int,int) ;
 int ui_list_begin (int *,int,int ,int ) ;
 int ui_list_end (int *) ;
 scalar_t__ ui_list_item (int *,TYPE_1__*,char*,int) ;
 int ui_panel_begin (int,int ,int,int,int) ;
 int ui_panel_end () ;
 int ui_spacer () ;

int ui_save_file(char filename[PATH_MAX], void (*extra_panel)(void))
{
 int i, rv = 0;

 ui_panel_begin(0, 0, 4, 4, 1);
 {
  ui_layout(L, Y, NW, 0, 0);
  ui_panel_begin(150, 0, 0, 0, 0);
  {
   ui_layout(T, X, NW, 2, 2);
   list_drives();
   if (extra_panel)
   {
    ui_spacer();
    extra_panel();
   }
   ui_layout(B, X, NW, 2, 2);
   if (ui_button("Cancel") || (!ui.focus && ui.key == KEY_ESCAPE))
   {
    filename[0] = 0;
    rv = 1;
   }
  }
  ui_panel_end();

  ui_layout(T, X, NW, 2, 2);
  if (ui_input(&fc.input_dir, 0, 1) == UI_INPUT_ACCEPT)
   load_dir(fc.input_dir.text);

  ui_layout(T, X, NW, 2, 2);
  ui_panel_begin(0, ui.gridsize, 0, 0, 0);
  {
   ui_layout(R, NONE, CENTER, 0, 0);
   if (ui_button("Save"))
   {
    fz_snprintf(filename, PATH_MAX, "%s/%s", fc.curdir, fc.input_file.text);
    rv = 1;
   }
   ui_spacer();
   if (ui_button("\xe2\x9e\x95"))
    bump_file_version(1);
   if (ui_button("\xe2\x9e\x96"))
    bump_file_version(-1);
   ui_spacer();
   ui_layout(ALL, X, CENTER, 0, 0);
   ui_input(&fc.input_file, 0, 1);
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
    }
    else
    {
     ui_input_init(&fc.input_file, name);
    }
   }
  }
  ui_list_end(&fc.list_dir);
 }
 ui_panel_end();

 return rv;
}
