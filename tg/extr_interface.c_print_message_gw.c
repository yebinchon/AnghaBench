
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_state {int dummy; } ;
struct tgl_message {int to_id; } ;
struct in_ev {int dummy; } ;
typedef int json_t ;


 scalar_t__ TGL_PEER_ENCR_CHAT ;
 struct tgl_state* TLS ;
 scalar_t__ alert_sound ;
 int assert (int) ;
 int binlog_read ;
 scalar_t__ disable_output ;
 int enable_json ;
 int free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int * json_pack_message (struct tgl_message*) ;
 int lua_new_msg (struct tgl_message*) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,char*) ;
 struct in_ev* notify_ev ;
 int play_sound () ;
 int print_message (struct in_ev*,struct tgl_message*) ;
 int py_new_msg (struct tgl_message*) ;
 scalar_t__ tgl_get_peer_type (int ) ;
 int write_secret_chat_file () ;

void print_message_gw (struct tgl_state *TLSR, struct tgl_message *M) {
  assert (TLSR == TLS);






  if (!binlog_read) { return; }
  if (tgl_get_peer_type (M->to_id) == TGL_PEER_ENCR_CHAT) {
    write_secret_chat_file ();
  }
  if (alert_sound) {
    play_sound ();
  }
  if (disable_output && !notify_ev) { return; }
  struct in_ev *ev = notify_ev;
  mprint_start (ev);
  if (!enable_json) {
    print_message (ev, M);
  } else {







  }
  mprint_end (ev);
}
