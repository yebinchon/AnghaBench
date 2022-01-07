
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct command {int* args; scalar_t__ name; } ;
typedef enum command_argument { ____Placeholder_command_argument } command_argument ;
struct TYPE_3__ {void* peer_type; } ;


 void* NOT_FOUND ;
 int TLS ;
 int assert (int ) ;
 TYPE_1__ autocomplete_id ;
 int * autocomplete_peer ;




 int ca_extf ;
 int ca_file_name ;
 int ca_file_name_end ;
 int ca_modifier ;

 int ca_msg_string_end ;
 int ca_none ;

 int ca_optional ;

 int ca_period ;

 int ca_string ;
 int ca_string_end ;

 struct command* commands ;
 char* cur_token ;
 int cur_token_channel () ;
 int cur_token_chat () ;
 void* cur_token_double () ;
 int cur_token_encr_chat () ;
 scalar_t__ cur_token_end_str ;
 void* cur_token_int () ;
 int cur_token_len ;
 TYPE_1__ cur_token_msg_id () ;
 int cur_token_peer () ;
 scalar_t__ cur_token_quoted ;
 int cur_token_user () ;
 scalar_t__ force_end_mode ;
 scalar_t__ is_same_word (char*,int,scalar_t__) ;
 char* line_ptr ;
 int next_token () ;
 int next_token_end_ac () ;
 char* rl_line_buffer ;
 void* tgl_get_peer_type (int ) ;
 int * tgl_peer_get (int ,int ) ;

enum command_argument get_complete_mode (void) {
  force_end_mode = 0;
  line_ptr = rl_line_buffer;
  autocomplete_peer = ((void*)0);
  autocomplete_id.peer_type = NOT_FOUND;

  while (1) {
    next_token ();
    if (cur_token_quoted) { return ca_none; }
    if (cur_token_len <= 0) { return 134; }
    if (*cur_token == '[') {
      if (cur_token_end_str) {
        return ca_modifier;
      }
      if (cur_token[cur_token_len - 1] != ']') {
        return ca_none;
      }
      continue;
    }
    break;
  }
  if (cur_token_quoted) { return ca_none; }
  if (cur_token_end_str) { return 134; }
  if (*cur_token == '(') { return ca_extf; }

  struct command *command = commands;
  int n = 0;
  struct tgl_command;
  while (command->name) {
    if (is_same_word (cur_token, cur_token_len, command->name)) {
      break;
    }
    n ++;
    command ++;
  }

  if (!command->name) {
    return ca_none;
  }

  enum command_argument *flags = command->args;
  while (1) {
    int period = 0;
    if (*flags == ca_period) {
      flags --;
      period = 1;
    }
    enum command_argument op = (*flags) & 255;
    int opt = (*flags) & ca_optional;

    if (op == ca_none) { return ca_none; }
    if (op == ca_string_end || op == ca_file_name_end || op == ca_msg_string_end) {
      next_token_end_ac ();

      if (cur_token_len < 0 || !cur_token_end_str) {
        return ca_none;
      } else {
        return op;
      }
    }

    char *save = line_ptr;
    next_token ();
    if (op == 128 || op == 135 || op == 129 || op == 130 || op == 131 || op == 133 || op == 132 || op == 134 || op == 136) {
      if (cur_token_quoted) {
        if (opt) {
          line_ptr = save;
          flags ++;
          continue;
        } else if (period) {
          line_ptr = save;
          flags += 2;
          continue;
        } else {
          return ca_none;
        }
      } else {
        if (cur_token_end_str) { return op; }

        int ok = 1;
        switch (op) {
        case 128:
          ok = (tgl_get_peer_type (cur_token_user ()) != NOT_FOUND);
          break;
        case 135:
          ok = (tgl_get_peer_type (cur_token_chat ()) != NOT_FOUND);
          break;
        case 129:
          ok = (tgl_get_peer_type (cur_token_encr_chat ()) != NOT_FOUND);
          break;
        case 136:
          ok = (tgl_get_peer_type (cur_token_channel ()) != NOT_FOUND);
          break;
        case 130:
          ok = (tgl_get_peer_type (cur_token_peer ()) != NOT_FOUND);
          if (ok) {
            autocomplete_peer = tgl_peer_get (TLS, cur_token_peer ());
            autocomplete_id.peer_type = NOT_FOUND;
          }
          break;
        case 131:
          ok = (cur_token_int () != NOT_FOUND);
          break;
        case 132:
          ok = (cur_token_msg_id ().peer_type != 0);
          if (ok) {
            autocomplete_peer = ((void*)0);
            autocomplete_id = cur_token_msg_id ();
          }
          break;
        case 133:
          ok = (cur_token_double () != NOT_FOUND);
          break;
        case 134:
          ok = cur_token_len > 0;
          break;
        default:
          assert (0);
        }

        if (opt && !ok) {
          line_ptr = save;
          flags ++;
          continue;
        }
        if (period && !ok) {
          line_ptr = save;
          flags += 2;
          continue;
        }
        if (!ok) {
          return ca_none;
        }

        flags ++;
        continue;
      }
    }
    if (op == ca_string || op == ca_file_name) {
      if (cur_token_end_str) {
        return op;
      } else {
        flags ++;
        continue;
      }
    }
    assert (0);
  }
}
