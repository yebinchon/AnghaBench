
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode {int * default_format; int name; } ;
struct format_tree {int tag; int flags; int time; struct cmdq_item* item; struct client* client; int tree; } ;
struct cmdq_item {int dummy; } ;
struct client {int references; } ;


 int RB_INIT (int *) ;
 int * VERSION ;
 struct window_mode** all_window_modes ;
 int event_initialized (int *) ;
 int evtimer_set (int *,int (*) (int,int ,int *),int *) ;
 int format_add (struct format_tree*,char*,char*,int *) ;
 int format_add_cb (struct format_tree*,char*,int ) ;
 int format_add_tv (struct format_tree*,char*,int *) ;
 int format_cb_host ;
 int format_cb_host_short ;
 int format_cb_pid ;
 int format_create_add_item (struct format_tree*,struct cmdq_item*) ;
 int format_job_event ;
 int format_job_timer (int,int ,int *) ;
 int * socket_path ;
 int start_time ;
 size_t strcspn (char*,char*) ;
 int time (int *) ;
 struct format_tree* xcalloc (int,int) ;
 int xsnprintf (char*,int,char*,int ) ;

struct format_tree *
format_create(struct client *c, struct cmdq_item *item, int tag, int flags)
{
 struct format_tree *ft;
 const struct window_mode **wm;
 char tmp[64];

 if (!event_initialized(&format_job_event)) {
  evtimer_set(&format_job_event, format_job_timer, ((void*)0));
  format_job_timer(-1, 0, ((void*)0));
 }

 ft = xcalloc(1, sizeof *ft);
 RB_INIT(&ft->tree);

 if (c != ((void*)0)) {
  ft->client = c;
  ft->client->references++;
 }
 ft->item = item;

 ft->tag = tag;
 ft->flags = flags;
 ft->time = time(((void*)0));

 format_add(ft, "version", "%s", VERSION);
 format_add_cb(ft, "host", format_cb_host);
 format_add_cb(ft, "host_short", format_cb_host_short);
 format_add_cb(ft, "pid", format_cb_pid);
 format_add(ft, "socket_path", "%s", socket_path);
 format_add_tv(ft, "start_time", &start_time);

 for (wm = all_window_modes; *wm != ((void*)0); wm++) {
  if ((*wm)->default_format != ((void*)0)) {
   xsnprintf(tmp, sizeof tmp, "%s_format", (*wm)->name);
   tmp[strcspn(tmp, "-")] = '_';
   format_add(ft, tmp, "%s", (*wm)->default_format);
  }
 }

 if (item != ((void*)0))
  format_create_add_item(ft, item);

 return (ft);
}
