#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct command {int* args; scalar_t__ name; } ;
typedef  enum command_argument { ____Placeholder_command_argument } command_argument ;
struct TYPE_3__ {void* peer_type; } ;

/* Variables and functions */
 void* NOT_FOUND ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ autocomplete_id ; 
 int /*<<< orphan*/ * autocomplete_peer ; 
#define  ca_channel 136 
#define  ca_chat 135 
#define  ca_command 134 
#define  ca_double 133 
 int ca_extf ; 
 int ca_file_name ; 
 int ca_file_name_end ; 
 int ca_modifier ; 
#define  ca_msg_id 132 
 int ca_msg_string_end ; 
 int ca_none ; 
#define  ca_number 131 
 int ca_optional ; 
#define  ca_peer 130 
 int ca_period ; 
#define  ca_secret_chat 129 
 int ca_string ; 
 int ca_string_end ; 
#define  ca_user 128 
 struct command* commands ; 
 char* cur_token ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ cur_token_end_str ; 
 void* FUNC5 () ; 
 int cur_token_len ; 
 TYPE_1__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ cur_token_quoted ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ force_end_mode ; 
 scalar_t__ FUNC9 (char*,int,scalar_t__) ; 
 char* line_ptr ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* rl_line_buffer ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum command_argument FUNC14 (void) {
  force_end_mode = 0;
  line_ptr = rl_line_buffer;
  autocomplete_peer = NULL;
  autocomplete_id.peer_type = NOT_FOUND;

  while (1) {
    FUNC10 ();
    if (cur_token_quoted) { return ca_none; }
    if (cur_token_len <= 0) { return ca_command; }
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
  if (cur_token_end_str) { return ca_command; }
  if (*cur_token == '(') { return ca_extf; }
  
  struct command *command = commands;
  int n = 0;
  struct tgl_command;
  while (command->name) {
    if (FUNC9 (cur_token, cur_token_len, command->name)) {
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
      FUNC11 ();

      if (cur_token_len < 0 || !cur_token_end_str) { 
        return ca_none;
      } else {
        return op;
      }
    }
    
    char *save = line_ptr;
    FUNC10 ();
    if (op == ca_user || op == ca_chat || op == ca_secret_chat || op == ca_peer || op == ca_number || op == ca_double || op == ca_msg_id || op == ca_command || op == ca_channel) {
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
        case ca_user:
          ok = (FUNC12 (FUNC8 ()) != NOT_FOUND);
          break;
        case ca_chat:
          ok = (FUNC12 (FUNC2 ()) != NOT_FOUND);
          break;
        case ca_secret_chat:
          ok = (FUNC12 (FUNC4 ()) != NOT_FOUND);
          break;
        case ca_channel:
          ok = (FUNC12 (FUNC1 ()) != NOT_FOUND);
          break;
        case ca_peer:
          ok = (FUNC12 (FUNC7 ()) != NOT_FOUND);
          if (ok) {
            autocomplete_peer = FUNC13 (TLS, FUNC7 ());
            autocomplete_id.peer_type = NOT_FOUND;
          }
          break;
        case ca_number:
          ok = (FUNC5 () != NOT_FOUND);
          break;
        case ca_msg_id:
          ok = (FUNC6 ().peer_type != 0);
          if (ok) {
            autocomplete_peer = NULL;
            autocomplete_id = FUNC6 ();
          }
          break;
        case ca_double:
          ok = (FUNC3 () != NOT_FOUND);
          break;
        case ca_command:
          ok = cur_token_len > 0;
          break;
        default:
          FUNC0 (0);
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
    FUNC0 (0);
  }
}