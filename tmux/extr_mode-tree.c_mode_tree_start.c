
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct window_pane {int base; } ;
struct screen {int mode; } ;
struct TYPE_2__ {size_t field; scalar_t__ reversed; } ;
struct mode_tree_data {int references; char const** sort_list; size_t sort_size; int preview; struct screen screen; int children; int menucb; int searchcb; int drawcb; int buildcb; int * filter; TYPE_1__ sort_crit; struct menu_item const* menu; void* modedata; struct window_pane* wp; } ;
struct menu_item {int dummy; } ;
struct args {int dummy; } ;
typedef int mode_tree_search_cb ;
typedef int mode_tree_menu_cb ;
typedef int mode_tree_draw_cb ;
typedef int mode_tree_build_cb ;


 int MODE_CURSOR ;
 int TAILQ_INIT (int *) ;
 char* args_get (struct args*,float) ;
 scalar_t__ args_has (struct args*,float) ;
 int screen_init (struct screen*,int ,int ,int ) ;
 int screen_size_x (int *) ;
 int screen_size_y (int *) ;
 scalar_t__ strcasecmp (char const*,char const*) ;
 struct mode_tree_data* xcalloc (int,int) ;
 int * xstrdup (char*) ;

struct mode_tree_data *
mode_tree_start(struct window_pane *wp, struct args *args,
    mode_tree_build_cb buildcb, mode_tree_draw_cb drawcb,
    mode_tree_search_cb searchcb, mode_tree_menu_cb menucb, void *modedata,
    const struct menu_item *menu, const char **sort_list, u_int sort_size,
    struct screen **s)
{
 struct mode_tree_data *mtd;
 const char *sort;
 u_int i;

 mtd = xcalloc(1, sizeof *mtd);
 mtd->references = 1;

 mtd->wp = wp;
 mtd->modedata = modedata;
 mtd->menu = menu;

 mtd->sort_list = sort_list;
 mtd->sort_size = sort_size;

 mtd->preview = !args_has(args, 'N');

 sort = args_get(args, 'O');
 if (sort != ((void*)0)) {
  for (i = 0; i < sort_size; i++) {
   if (strcasecmp(sort, sort_list[i]) == 0)
    mtd->sort_crit.field = i;
  }
 }
 mtd->sort_crit.reversed = args_has(args, 'r');

 if (args_has(args, 'f'))
  mtd->filter = xstrdup(args_get(args, 'f'));
 else
  mtd->filter = ((void*)0);

 mtd->buildcb = buildcb;
 mtd->drawcb = drawcb;
 mtd->searchcb = searchcb;
 mtd->menucb = menucb;

 TAILQ_INIT(&mtd->children);

 *s = &mtd->screen;
 screen_init(*s, screen_size_x(&wp->base), screen_size_y(&wp->base), 0);
 (*s)->mode &= ~MODE_CURSOR;

 return (mtd);
}
