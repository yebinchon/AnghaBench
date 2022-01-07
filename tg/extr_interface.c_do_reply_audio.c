
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int dummy; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;


 int TGL_SEND_MSG_FLAG_DOCUMENT_AUDIO ;
 int _do_reply_file (struct command*,int,struct arg*,struct in_ev*,int ) ;

void do_reply_audio (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  _do_reply_file (command, arg_num, args, ev, TGL_SEND_MSG_FLAG_DOCUMENT_AUDIO);
}
