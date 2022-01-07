
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct winlink {int dummy; } ;
struct window_pane {int id; int modes; } ;
struct window_mode_entry {TYPE_2__* mode; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct session {int options; struct winlink* curw; } ;
struct mouse_event {int valid; int key; } ;
struct key_table {int name; int references; } ;
struct key_event {int key; struct mouse_event m; } ;
struct key_binding {int flags; } ;
struct cmdq_item {struct client* client; } ;
struct cmd_find_state {struct window_pane* wp; } ;
struct TYPE_3__ {int (* mouse_drag_update ) (struct client*,struct mouse_event*) ;} ;
struct client {int flags; struct key_table* keytable; int repeat_timer; TYPE_1__ tty; int activity_time; struct session* session; } ;
typedef int key_code ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {int (* key_table ) (struct window_mode_entry*) ;} ;


 int CLIENT_DEAD ;
 int CLIENT_READONLY ;
 int CLIENT_REPEAT ;
 int CLIENT_SUSPENDED ;
 int CMD_RETURN_NORMAL ;
 int KEYC_ANY ;
 int KEYC_DRAGGING ;
 scalar_t__ KEYC_IS_MOUSE (int) ;
 int KEYC_MOUSE ;
 int KEYC_UNKNOWN ;
 int KEYC_XTERM ;
 int KEY_BINDING_REPEAT ;
 struct window_mode_entry* TAILQ_FIRST (int *) ;
 scalar_t__ cmd_find_from_mouse (struct cmd_find_state*,struct mouse_event*,int ) ;
 int cmd_find_from_session (struct cmd_find_state*,struct session*,int ) ;
 int evtimer_add (int *,struct timeval*) ;
 int evtimer_del (int *) ;
 int fatal (char*) ;
 int free (struct key_event*) ;
 scalar_t__ gettimeofday (int *,int *) ;
 int key_bindings_dispatch (struct key_binding*,struct cmdq_item*,struct client*,struct mouse_event*,struct cmd_find_state*) ;
 struct key_binding* key_bindings_get (struct key_table*,int) ;
 struct key_table* key_bindings_get_table (int ,int) ;
 int key_bindings_unref_table (struct key_table*) ;
 int log_debug (char*,...) ;
 int options_get_number (int ,char*) ;
 scalar_t__ server_client_assume_paste (struct session*) ;
 int server_client_check_mouse (struct client*,struct key_event*) ;
 scalar_t__ server_client_is_default_key_table (struct client*,struct key_table*) ;
 int server_client_set_key_table (struct client*,char*) ;
 int server_client_update_latest (struct client*) ;
 int server_status_client (struct client*) ;
 int session_update_activity (struct session*,int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (struct client*,struct mouse_event*) ;
 int stub2 (struct window_mode_entry*) ;
 int window_pane_key (struct window_pane*,struct client*,struct session*,struct winlink*,int,struct mouse_event*) ;

__attribute__((used)) static enum cmd_retval
server_client_key_callback(struct cmdq_item *item, void *data)
{
 struct client *c = item->client;
 struct key_event *event = data;
 key_code key = event->key;
 struct mouse_event *m = &event->m;
 struct session *s = c->session;
 struct winlink *wl;
 struct window_pane *wp;
 struct window_mode_entry *wme;
 struct timeval tv;
 struct key_table *table, *first;
 struct key_binding *bd;
 int xtimeout, flags;
 struct cmd_find_state fs;
 key_code key0;


 if (s == ((void*)0) || (c->flags & (CLIENT_DEAD|CLIENT_SUSPENDED)) != 0)
  goto out;
 wl = s->curw;


 if (gettimeofday(&c->activity_time, ((void*)0)) != 0)
  fatal("gettimeofday failed");
 session_update_activity(s, &c->activity_time);


 m->valid = 0;
 if (key == KEYC_MOUSE) {
  if (c->flags & CLIENT_READONLY)
   goto out;
  key = server_client_check_mouse(c, event);
  if (key == KEYC_UNKNOWN)
   goto out;

  m->valid = 1;
  m->key = key;





  if (key == KEYC_DRAGGING) {
   c->tty.mouse_drag_update(c, m);
   goto out;
  }
 }


 if (!KEYC_IS_MOUSE(key) || cmd_find_from_mouse(&fs, m, 0) != 0)
  cmd_find_from_session(&fs, s, 0);
 wp = fs.wp;


 if (KEYC_IS_MOUSE(key) && !options_get_number(s->options, "mouse"))
  goto forward_key;


 if (!KEYC_IS_MOUSE(key) && server_client_assume_paste(s))
  goto forward_key;





 if (server_client_is_default_key_table(c, c->keytable) &&
     wp != ((void*)0) &&
     (wme = TAILQ_FIRST(&wp->modes)) != ((void*)0) &&
     wme->mode->key_table != ((void*)0))
  table = key_bindings_get_table(wme->mode->key_table(wme), 1);
 else
  table = c->keytable;
 first = table;

table_changed:




 key0 = (key & ~KEYC_XTERM);
 if ((key0 == (key_code)options_get_number(s->options, "prefix") ||
     key0 == (key_code)options_get_number(s->options, "prefix2")) &&
     strcmp(table->name, "prefix") != 0) {
  server_client_set_key_table(c, "prefix");
  server_status_client(c);
  goto out;
 }
 flags = c->flags;

try_again:

 if (wp == ((void*)0))
  log_debug("key table %s (no pane)", table->name);
 else
  log_debug("key table %s (pane %%%u)", table->name, wp->id);
 if (c->flags & CLIENT_REPEAT)
  log_debug("currently repeating");


 bd = key_bindings_get(table, key0);
 if (bd != ((void*)0)) {





  if ((c->flags & CLIENT_REPEAT) &&
      (~bd->flags & KEY_BINDING_REPEAT)) {
   log_debug("found in key table %s (not repeating)",
       table->name);
   server_client_set_key_table(c, ((void*)0));
   first = table = c->keytable;
   c->flags &= ~CLIENT_REPEAT;
   server_status_client(c);
   goto table_changed;
  }
  log_debug("found in key table %s", table->name);





  table->references++;





  xtimeout = options_get_number(s->options, "repeat-time");
  if (xtimeout != 0 && (bd->flags & KEY_BINDING_REPEAT)) {
   c->flags |= CLIENT_REPEAT;

   tv.tv_sec = xtimeout / 1000;
   tv.tv_usec = (xtimeout % 1000) * 1000L;
   evtimer_del(&c->repeat_timer);
   evtimer_add(&c->repeat_timer, &tv);
  } else {
   c->flags &= ~CLIENT_REPEAT;
   server_client_set_key_table(c, ((void*)0));
  }
  server_status_client(c);


  key_bindings_dispatch(bd, item, c, m, &fs);
  key_bindings_unref_table(table);
  goto out;
 }




 if (key0 != KEYC_ANY) {
  key0 = KEYC_ANY;
  goto try_again;
 }





 log_debug("not found in key table %s", table->name);
 if (!server_client_is_default_key_table(c, table) ||
     (c->flags & CLIENT_REPEAT)) {
  log_debug("trying in root table");
  server_client_set_key_table(c, ((void*)0));
  table = c->keytable;
  if (c->flags & CLIENT_REPEAT)
   first = table;
  c->flags &= ~CLIENT_REPEAT;
  server_status_client(c);
  goto table_changed;
 }





 if (first != table && (~flags & CLIENT_REPEAT)) {
  server_client_set_key_table(c, ((void*)0));
  server_status_client(c);
  goto out;
 }

forward_key:
 if (c->flags & CLIENT_READONLY)
  goto out;
 if (wp != ((void*)0))
  window_pane_key(wp, c, s, wl, key, m);

out:
 if (s != ((void*)0))
  server_client_update_latest(c);
 free(event);
 return (CMD_RETURN_NORMAL);
}
