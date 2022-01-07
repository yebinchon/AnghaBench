
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_state {int dummy; } ;
struct tgl_secret_chat {int id; } ;
struct in_ev {int dummy; } ;


 int COLOR_YELLOW ;
 unsigned int TGL_UPDATE_CREATED ;
 unsigned int TGL_UPDATE_DELETED ;
 unsigned int TGL_UPDATE_REQUESTED ;
 unsigned int TGL_UPDATE_WORKING ;
 struct tgl_state* TLS ;
 int assert (int) ;
 int binlog_read ;
 int disable_auto_accept ;
 scalar_t__ disable_output ;
 int enable_json ;
 int json_peer_update (struct in_ev*,void*,unsigned int) ;
 int lua_secret_chat_update (struct tgl_secret_chat*,unsigned int) ;
 int mpop_color (struct in_ev*) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*) ;
 int mpush_color (struct in_ev*,int ) ;
 struct in_ev* notify_ev ;
 int print_encr_chat_name (struct in_ev*,int ,void*) ;
 int print_encr_chat_success_gw ;
 int print_peer_updates (struct in_ev*,unsigned int) ;
 int py_secret_chat_update (struct tgl_secret_chat*,unsigned int) ;
 int tgl_do_accept_encr_chat_request (struct tgl_state*,struct tgl_secret_chat*,int ,int ) ;
 int write_secret_chat_file () ;

void secret_chat_update_gw (struct tgl_state *TLSR, struct tgl_secret_chat *U, unsigned flags) {
  assert (TLSR == TLS);







  if ((flags & TGL_UPDATE_WORKING) || (flags & TGL_UPDATE_DELETED)) {
    write_secret_chat_file ();
  }

  if (!binlog_read) { return; }

  if ((flags & TGL_UPDATE_REQUESTED) && !disable_auto_accept) {

    tgl_do_accept_encr_chat_request (TLS, U, print_encr_chat_success_gw, 0);
  }

  if (disable_output && !notify_ev) { return; }
  struct in_ev *ev = notify_ev;


  if (!(flags & TGL_UPDATE_CREATED)) {
    mprint_start (ev);
    if (!enable_json) {
      mpush_color (ev, COLOR_YELLOW);
      mprintf (ev, "Secret chat ");
      print_encr_chat_name (ev, U->id, (void *)U);
      if (!(flags & TGL_UPDATE_DELETED)) {
        mprintf (ev, " updated");
        print_peer_updates (ev, flags);
      } else {
        mprintf (ev, " deleted");
      }
      mprintf (ev, "\n");
      mpop_color (ev);
    } else {
      json_peer_update (ev, (void *)U, flags);
    }
    mprint_end (ev);
  }
}
