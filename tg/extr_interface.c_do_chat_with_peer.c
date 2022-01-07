
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int dummy; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;


 int chat_mode_id ;
 int in_chat_mode ;

void do_chat_with_peer (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  if (!ev) {
    in_chat_mode = 1;
    chat_mode_id = args[0].peer_id;
  }
}
