
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TLS ;
 int chat_mode_id ;
 scalar_t__ in_chat_mode ;
 int offline_mode ;
 int print_msg_list_gw ;
 int sscanf (char*,char*,int*) ;
 scalar_t__ strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int tgl_do_get_history (int ,int ,int ,int,int ,int ,int ) ;
 int tgl_do_mark_read (int ,int ,int ,int ) ;
 int tgl_do_send_message (int ,int ,char*,scalar_t__,int ,int *,int ,int ) ;
 int update_prompt () ;

void interpreter_chat_mode (char *line) {
  if (line == ((void*)0) ||
          !strncmp (line, "/exit", 5) || !strncmp (line, "/quit", 5)) {
    in_chat_mode = 0;
    update_prompt ();
    return;
  }
  if (!strncmp (line, "/history", 8)) {
    int limit = 40;
    sscanf (line, "/history %99d", &limit);
    if (limit < 0 || limit > 1000) { limit = 40; }
    tgl_do_get_history (TLS, chat_mode_id, 0, limit, offline_mode, print_msg_list_gw, 0);
    return;
  }
  if (!strncmp (line, "/read", 5)) {
    tgl_do_mark_read (TLS, chat_mode_id, 0, 0);
    return;
  }
  if (strlen (line) > 0) {
    tgl_do_send_message (TLS, chat_mode_id, line, strlen (line), 0, ((void*)0), 0, 0);
  }
}
