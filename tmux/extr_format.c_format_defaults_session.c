
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_group {int name; } ;
struct session {int name; int id; int attached; int activity_time; int last_attached_time; int creation_time; int windows; } ;
struct format_tree {struct session* s; } ;


 int format_add (struct format_tree*,char*,char*,int) ;
 int format_add_cb (struct format_tree*,char*,int ) ;
 int format_add_tv (struct format_tree*,char*,int *) ;
 int format_cb_session_alerts ;
 int format_cb_session_group_list ;
 int format_cb_session_stack ;
 struct session_group* session_group_contains (struct session*) ;
 int session_group_count (struct session_group*) ;
 int winlink_count (int *) ;

__attribute__((used)) static void
format_defaults_session(struct format_tree *ft, struct session *s)
{
 struct session_group *sg;

 ft->s = s;

 format_add(ft, "session_name", "%s", s->name);
 format_add(ft, "session_windows", "%u", winlink_count(&s->windows));
 format_add(ft, "session_id", "$%u", s->id);

 sg = session_group_contains(s);
 format_add(ft, "session_grouped", "%d", sg != ((void*)0));
 if (sg != ((void*)0)) {
  format_add(ft, "session_group", "%s", sg->name);
  format_add(ft, "session_group_size", "%u",
      session_group_count (sg));
  format_add_cb(ft, "session_group_list",
      format_cb_session_group_list);
 }

 format_add_tv(ft, "session_created", &s->creation_time);
 format_add_tv(ft, "session_last_attached", &s->last_attached_time);
 format_add_tv(ft, "session_activity", &s->activity_time);

 format_add(ft, "session_attached", "%u", s->attached);
 format_add(ft, "session_many_attached", "%d", s->attached > 1);

 format_add_cb(ft, "session_alerts", format_cb_session_alerts);
 format_add_cb(ft, "session_stack", format_cb_session_stack);
}
