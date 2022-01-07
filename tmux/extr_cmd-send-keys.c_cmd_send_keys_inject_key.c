
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct window_mode_entry {TYPE_2__* mode; } ;
struct key_table {int references; } ;
struct key_binding {int dummy; } ;
struct cmdq_item {int target; int client; } ;
struct cmd_find_state {int wl; int s; TYPE_3__* wp; } ;
struct client {int dummy; } ;
typedef int key_code ;
struct TYPE_6__ {TYPE_1__* window; int modes; } ;
struct TYPE_5__ {int (* key_table ) (struct window_mode_entry*) ;} ;
struct TYPE_4__ {int options; } ;


 int KEYC_XTERM ;
 struct window_mode_entry* TAILQ_FIRST (int *) ;
 struct cmdq_item* key_bindings_dispatch (struct key_binding*,struct cmdq_item*,struct client*,int *,int *) ;
 struct key_binding* key_bindings_get (struct key_table*,int) ;
 struct key_table* key_bindings_get_table (int ,int) ;
 int key_bindings_unref_table (struct key_table*) ;
 scalar_t__ options_get_number (int ,char*) ;
 int stub1 (struct window_mode_entry*) ;
 int window_pane_key (TYPE_3__*,int ,int ,int ,int,int *) ;

__attribute__((used)) static struct cmdq_item *
cmd_send_keys_inject_key(struct client *c, struct cmd_find_state *fs,
    struct cmdq_item *item, key_code key)
{
 struct window_mode_entry *wme;
 struct key_table *table;
 struct key_binding *bd;

 wme = TAILQ_FIRST(&fs->wp->modes);
 if (wme == ((void*)0) || wme->mode->key_table == ((void*)0)) {
  if (options_get_number(fs->wp->window->options, "xterm-keys"))
   key |= KEYC_XTERM;
  window_pane_key(fs->wp, item->client, fs->s, fs->wl, key, ((void*)0));
  return (item);
 }
 table = key_bindings_get_table(wme->mode->key_table(wme), 1);

 bd = key_bindings_get(table, key & ~KEYC_XTERM);
 if (bd != ((void*)0)) {
  table->references++;
  item = key_bindings_dispatch(bd, item, c, ((void*)0), &item->target);
  key_bindings_unref_table(table);
 }
 return (item);
}
