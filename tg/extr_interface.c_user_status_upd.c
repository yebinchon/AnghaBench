
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_user {int status; int id; } ;
struct tgl_state {int dummy; } ;
struct in_ev {int dummy; } ;
typedef int json_t ;


 int COLOR_YELLOW ;
 int binlog_read ;
 scalar_t__ disable_output ;
 int enable_json ;
 int free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int * json_pack_user_status (struct tgl_user*) ;
 int log_level ;
 int mpop_color (struct in_ev*) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,...) ;
 int mpush_color (struct in_ev*,int ) ;
 struct in_ev* notify_ev ;
 int print_user_name (struct in_ev*,int ,void*) ;
 int print_user_status (int *,struct in_ev*) ;

void user_status_upd (struct tgl_state *TLS, struct tgl_user *U) {
  if (disable_output && !notify_ev) { return; }
  if (!binlog_read) { return; }
  if (log_level < 3) { return; }
  struct in_ev *ev = notify_ev;
  mprint_start (ev);
  if (!enable_json)
  {
    mpush_color (ev, COLOR_YELLOW);
    mprintf (ev, "User ");
    print_user_name(ev, U->id, (void *) U);
    mprintf (ev, " ");
    print_user_status(&U->status, ev);
    mprintf (ev, "\n");
    mpop_color (ev);
  } else {







  }
  mprint_end (ev);
}
