
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_ds_reply_markup {int dummy; } ;
struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;


 int ARG2STR (int) ;
 int ENOSYS ;
 int TGL_SEND_MSG_FLAG_REPLY (int ) ;
 int TLS ;
 int TYPE_TO_PARAM (int ) ;
 int assert (int) ;
 int clear_packet () ;
 int disable_msg_preview ;
 int do_html ;
 int fail_interface (int ,struct in_ev*,int ,char*) ;
 struct tl_ds_reply_markup* fetch_ds_type_reply_markup (int ) ;
 int free_ds_type_reply_markup (struct tl_ds_reply_markup*,int ) ;
 int in_end ;
 int in_ptr ;
 int packet_buffer ;
 int packet_ptr ;
 int print_msg_success_gw ;
 int reply_id ;
 int reply_markup ;
 int tgl_do_send_message (int ,int ,int ,int,struct tl_ds_reply_markup*,int ,struct in_ev*) ;
 scalar_t__ tglf_store_type (int ,int ,int ) ;

void do_msg_kbd (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 3);
  if (ev) { ev->refcnt ++; }

  clear_packet ();
  if (tglf_store_type (TLS, ARG2STR(1), TYPE_TO_PARAM (reply_markup)) < 0) {
    fail_interface (TLS, ev, ENOSYS, "can not parse reply markup");
    return;
  }
  in_ptr = packet_buffer;
  in_end = packet_ptr;

  struct tl_ds_reply_markup *DS_RM = fetch_ds_type_reply_markup (TYPE_TO_PARAM (reply_markup));
  assert (DS_RM);

  tgl_do_send_message (TLS, args[0].peer_id, ARG2STR(2), TGL_SEND_MSG_FLAG_REPLY(reply_id) | disable_msg_preview | do_html, DS_RM, print_msg_success_gw, ev);

  free_ds_type_reply_markup (DS_RM, TYPE_TO_PARAM (reply_markup));
}
