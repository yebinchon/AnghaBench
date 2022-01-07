
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct mouse_event {int dummy; } ;
struct mode_tree_line {int flat; struct mode_tree_item* item; } ;
struct mode_tree_item {int tagged; int expanded; int line; struct mode_tree_item* parent; int children; } ;
struct TYPE_2__ {int reversed; int field; } ;
struct mode_tree_data {scalar_t__ width; scalar_t__ height; int preview; scalar_t__ offset; scalar_t__ line_size; size_t current; char* filter; int references; TYPE_1__ sort_crit; int sort_size; struct mode_tree_line* line_list; int wp; } ;
struct client {int dummy; } ;
typedef char key_code ;


 char KEYC_DOUBLECLICK1_PANE ;


 char KEYC_ESCAPE ;

 scalar_t__ KEYC_IS_MOUSE (char) ;

 char KEYC_MASK_KEY ;
 char KEYC_MASK_MOD ;
 char KEYC_MOUSEDOWN1_PANE ;
 char KEYC_MOUSEDOWN3_PANE ;
 char KEYC_NONE ;






 int PROMPT_NOFORMAT ;
 scalar_t__ cmd_mouse_at (int ,struct mouse_event*,scalar_t__*,scalar_t__*,int ) ;
 int mode_tree_build (struct mode_tree_data*) ;
 int mode_tree_check_selected (struct mode_tree_data*) ;
 int mode_tree_clear_tagged (int *) ;
 int mode_tree_display_menu (struct mode_tree_data*,struct client*,scalar_t__,scalar_t__,int) ;
 int mode_tree_down (struct mode_tree_data*,int) ;
 int mode_tree_filter_callback ;
 int mode_tree_filter_free ;
 int mode_tree_search_callback ;
 int mode_tree_search_free ;
 int mode_tree_search_set (struct mode_tree_data*) ;
 int mode_tree_up (struct mode_tree_data*,int) ;
 int status_prompt_set (struct client*,char*,char*,int ,int ,struct mode_tree_data*,int ) ;

int
mode_tree_key(struct mode_tree_data *mtd, struct client *c, key_code *key,
    struct mouse_event *m, u_int *xp, u_int *yp)
{
 struct mode_tree_line *line;
 struct mode_tree_item *current, *parent;
 u_int i, x, y;
 int choice;
 key_code tmp;

 if (KEYC_IS_MOUSE(*key) && m != ((void*)0)) {
  if (cmd_mouse_at(mtd->wp, m, &x, &y, 0) != 0) {
   *key = KEYC_NONE;
   return (0);
  }
  if (xp != ((void*)0))
   *xp = x;
  if (yp != ((void*)0))
   *yp = y;
  if (x > mtd->width || y > mtd->height) {
   if (*key == KEYC_MOUSEDOWN3_PANE)
    mode_tree_display_menu(mtd, c, x, y, 1);
   if (!mtd->preview)
    *key = KEYC_NONE;
   return (0);
  }
  if (mtd->offset + y < mtd->line_size) {
   if (*key == KEYC_MOUSEDOWN1_PANE ||
       *key == KEYC_MOUSEDOWN3_PANE ||
       *key == KEYC_DOUBLECLICK1_PANE)
    mtd->current = mtd->offset + y;
   if (*key == KEYC_DOUBLECLICK1_PANE)
    *key = '\r';
   else {
    if (*key == KEYC_MOUSEDOWN3_PANE)
     mode_tree_display_menu(mtd, c, x, y, 0);
    *key = KEYC_NONE;
   }
  } else {
   if (*key == KEYC_MOUSEDOWN3_PANE)
    mode_tree_display_menu(mtd, c, x, y, 0);
   *key = KEYC_NONE;
  }
  return (0);
 }

 line = &mtd->line_list[mtd->current];
 current = line->item;

 choice = -1;
 if (*key >= '0' && *key <= '9')
  choice = (*key) - '0';
 else if (((*key) & KEYC_MASK_MOD) == KEYC_ESCAPE) {
  tmp = (*key) & KEYC_MASK_KEY;
  if (tmp >= 'a' && tmp <= 'z')
   choice = 10 + (tmp - 'a');
 }
 if (choice != -1) {
  if ((u_int)choice > mtd->line_size - 1) {
   *key = KEYC_NONE;
   return (0);
  }
  mtd->current = choice;
  *key = '\r';
  return (0);
 }

 switch (*key) {
 case 'q':
 case '\033':
 case '\007':
  return (1);
 case 130:
 case 'k':
 case 128:
 case '\020':
  mode_tree_up(mtd, 1);
  break;
 case 137:
 case 'j':
 case 129:
 case '\016':
  mode_tree_down(mtd, 1);
  break;
 case 'g':
 case 132:
 case '\002':
  for (i = 0; i < mtd->height; i++) {
   if (mtd->current == 0)
    break;
   mode_tree_up(mtd, 1);
  }
  break;
 case 'G':
 case 133:
 case '\006':
  for (i = 0; i < mtd->height; i++) {
   if (mtd->current == mtd->line_size - 1)
    break;
   mode_tree_down(mtd, 1);
  }
  break;
 case 135:
  mtd->current = 0;
  mtd->offset = 0;
  break;
 case 136:
  mtd->current = mtd->line_size - 1;
  if (mtd->current > mtd->height - 1)
   mtd->offset = mtd->current - mtd->height + 1;
  else
   mtd->offset = 0;
  break;
 case 't':




  if (!current->tagged) {
   parent = current->parent;
   while (parent != ((void*)0)) {
    parent->tagged = 0;
    parent = parent->parent;
   }
   mode_tree_clear_tagged(&current->children);
   current->tagged = 1;
  } else
   current->tagged = 0;
  if (m != ((void*)0))
   mode_tree_down(mtd, 0);
  break;
 case 'T':
  for (i = 0; i < mtd->line_size; i++)
   mtd->line_list[i].item->tagged = 0;
  break;
 case '\024':
  for (i = 0; i < mtd->line_size; i++) {
   if (mtd->line_list[i].item->parent == ((void*)0))
    mtd->line_list[i].item->tagged = 1;
   else
    mtd->line_list[i].item->tagged = 0;
  }
  break;
 case 'O':
  mtd->sort_crit.field++;
  if (mtd->sort_crit.field == mtd->sort_size)
   mtd->sort_crit.field = 0;
  mode_tree_build(mtd);
  break;
 case 'r':
  mtd->sort_crit.reversed = !mtd->sort_crit.reversed;
  mode_tree_build(mtd);
  break;
 case 134:
 case 'h':
 case '-':
  if (line->flat || !current->expanded)
   current = current->parent;
  if (current == ((void*)0))
   mode_tree_up(mtd, 0);
  else {
   current->expanded = 0;
   mtd->current = current->line;
   mode_tree_build(mtd);
  }
  break;
 case 131:
 case 'l':
 case '+':
  if (line->flat || current->expanded)
   mode_tree_down(mtd, 0);
  else if (!line->flat) {
   current->expanded = 1;
   mode_tree_build(mtd);
  }
  break;
 case '?':
 case '/':
 case '\023':
  mtd->references++;
  status_prompt_set(c, "(search) ", "",
      mode_tree_search_callback, mode_tree_search_free, mtd,
      PROMPT_NOFORMAT);
  break;
 case 'n':
  mode_tree_search_set(mtd);
  break;
 case 'f':
  mtd->references++;
  status_prompt_set(c, "(filter) ", mtd->filter,
      mode_tree_filter_callback, mode_tree_filter_free, mtd,
      PROMPT_NOFORMAT);
  break;
 case 'v':
  mtd->preview = !mtd->preview;
  mode_tree_build(mtd);
  if (mtd->preview)
   mode_tree_check_selected(mtd);
  break;
 }
 return (0);
}
