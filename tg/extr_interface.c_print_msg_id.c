
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tgl_message_id_t ;
struct tgl_message {int temp_id; } ;
struct in_ev {int dummy; } ;


 int mprintf (struct in_ev*,char*,...) ;
 scalar_t__ msg_num_mode ;
 int permanent_msg_id_mode ;
 int print_permanent_msg_id (int ) ;

void print_msg_id (struct in_ev *ev, tgl_message_id_t msg_id, struct tgl_message *M) {
  if (msg_num_mode) {
    if (!permanent_msg_id_mode) {
      if (M) {
        mprintf (ev, "%d", M->temp_id);
      } else {
        mprintf (ev, "???");
      }
    } else {
      mprintf (ev, "%s", print_permanent_msg_id (msg_id));
    }
  }
}
