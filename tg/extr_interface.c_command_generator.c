
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tgl_peer_t ;
struct tgl_message {int from_id; } ;
typedef enum command_argument { ____Placeholder_command_argument } command_argument ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {unsigned int peer_type; } ;


 int NOT_FOUND ;
 int TGL_PEER_CHANNEL ;
 int TGL_PEER_CHAT ;
 int TGL_PEER_USER ;
 int TLS ;
 int assert (int) ;
 TYPE_1__ autocomplete_id ;
 TYPE_2__* autocomplete_peer ;



 int ca_double ;




 int ca_msg_id ;

 int ca_none ;
 int ca_number ;


 int ca_string ;
 int ca_string_end ;

 int complete_chat_command (TYPE_2__*,int,char*,int,char**) ;
 int complete_command_list (int,char*,int,char**) ;
 int complete_spec_message_answer (struct tgl_message*,int,char*,int,char**) ;
 int complete_string_list (int ,int,char const*,int,char**) ;
 int complete_user_command (TYPE_2__*,int,char*,int,char**) ;
 int complete_username (int ,int,char*,int,char**) ;
 char* cur_token ;
 int cur_token_len ;
 int get_complete_mode () ;
 int in_chat_commands ;
 scalar_t__ in_chat_mode ;
 int modifiers ;
 char* rl_filename_completion_function (char*,int) ;
 char* rl_line_buffer ;
 size_t rl_point ;
 int strlen (char const*) ;
 int tgl_complete_channel_list (int ,int,char*,int,char**) ;
 int tgl_complete_chat_list (int ,int,char*,int,char**) ;
 int tgl_complete_encr_chat_list (int ,int,char*,int,char**) ;
 int tgl_complete_peer_list (int ,int,char*,int,char**) ;
 int tgl_complete_user_list (int ,int,char*,int,char**) ;
 int tgl_get_peer_type (int ) ;
 struct tgl_message* tgl_message_get (int ,TYPE_1__*) ;
 int * tgl_peer_get (int ,int ) ;
 int tglf_extf_autocomplete (int ,char const*,int,int,char**,char*,size_t) ;

char *command_generator (const char *text, int state) {

  static int len;

  static int index;
  static enum command_argument mode;
  static char *command_pos;
  static int command_len;

  if (in_chat_mode) {
    char *R = 0;
    index = complete_string_list (in_chat_commands, index, text, rl_point, &R);
    return R;
  }

  char c = 0;
  c = rl_line_buffer[rl_point];
  rl_line_buffer[rl_point] = 0;
  if (!state) {

    len = strlen (text);

    index = -1;

    mode = get_complete_mode ();
    command_pos = cur_token;
    command_len = cur_token_len;
  } else {
    if (mode != 134 && mode != 133 && index == -1) { return 0; }
  }

  if (mode == ca_none || mode == ca_string || mode == ca_string_end || mode == ca_number || mode == ca_double || mode == ca_msg_id) {
    if (c) { rl_line_buffer[rl_point] = c; }
    return 0;
  }
  assert (command_len >= 0);

  char *R = 0;
  switch (mode & 255) {
  case 136:
    index = complete_command_list (index, command_pos, command_len, &R);
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case 128:
    if (command_len && command_pos[0] == '@') {
      index = complete_username (TGL_PEER_USER, index, command_pos, command_len, &R);
    } else {
      index = tgl_complete_user_list (TLS, index, command_pos, command_len, &R);
    }
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case 130:
    if (command_len && command_pos[0] == '@') {
      index = complete_username (0, index, command_pos, command_len, &R);
    } else {
      index = tgl_complete_peer_list (TLS, index, command_pos, command_len, &R);
    }
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case 134:
  case 133:
    if (c) { rl_line_buffer[rl_point] = c; }
    R = rl_filename_completion_function (command_pos, state);
    return R;
  case 137:
    index = tgl_complete_chat_list (TLS, index, command_pos, command_len, &R);
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case 129:
    index = tgl_complete_encr_chat_list (TLS, index, command_pos, command_len, &R);
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case 138:
    if (command_len && command_pos[0] == '@') {
      index = complete_username (TGL_PEER_CHANNEL, index, command_pos, command_len, &R);
    } else {
      index = tgl_complete_channel_list (TLS, index, command_pos, command_len, &R);
    }
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case 132:
    index = complete_string_list (modifiers, index, command_pos, command_len, &R);
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case 131:
    if (autocomplete_peer) {
      if (tgl_get_peer_type (autocomplete_peer->id) == TGL_PEER_USER) {
        index = complete_user_command (autocomplete_peer, index, command_pos, command_len, &R);
      }
      if (tgl_get_peer_type (autocomplete_peer->id) == TGL_PEER_CHAT) {
        index = complete_chat_command (autocomplete_peer, index, command_pos, command_len, &R);
      }
    }
    if (autocomplete_id.peer_type != (unsigned)NOT_FOUND) {
      struct tgl_message *M = tgl_message_get (TLS, &autocomplete_id);
      if (M) {
        if (command_len > 0 && *command_pos == '/') {
          tgl_peer_t *P = tgl_peer_get (TLS, M->from_id);
          if (P) {
            index = complete_user_command (autocomplete_peer, index, command_pos, command_len, &R);
          }
        } else {
          index = complete_spec_message_answer (M, index, command_pos, command_len, &R);
        }
      }
    }
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;

  case 135:
    index = tglf_extf_autocomplete (TLS, text, len, index, &R, rl_line_buffer, rl_point);
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;

  default:
    if (c) { rl_line_buffer[rl_point] = c; }
    return 0;
  }
}
