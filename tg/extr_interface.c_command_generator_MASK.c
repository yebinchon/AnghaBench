#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tgl_peer_t ;
struct tgl_message {int /*<<< orphan*/  from_id; } ;
typedef  enum command_argument { ____Placeholder_command_argument } command_argument ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {unsigned int peer_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOT_FOUND ; 
 int /*<<< orphan*/  TGL_PEER_CHANNEL ; 
 int /*<<< orphan*/  TGL_PEER_CHAT ; 
 int /*<<< orphan*/  TGL_PEER_USER ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ autocomplete_id ; 
 TYPE_2__* autocomplete_peer ; 
#define  ca_channel 138 
#define  ca_chat 137 
#define  ca_command 136 
 int ca_double ; 
#define  ca_extf 135 
#define  ca_file_name 134 
#define  ca_file_name_end 133 
#define  ca_modifier 132 
 int ca_msg_id ; 
#define  ca_msg_string_end 131 
 int ca_none ; 
 int ca_number ; 
#define  ca_peer 130 
#define  ca_secret_chat 129 
 int ca_string ; 
 int ca_string_end ; 
#define  ca_user 128 
 int FUNC1 (TYPE_2__*,int,char*,int,char**) ; 
 int FUNC2 (int,char*,int,char**) ; 
 int FUNC3 (struct tgl_message*,int,char*,int,char**) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char const*,int,char**) ; 
 int FUNC5 (TYPE_2__*,int,char*,int,char**) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,char*,int,char**) ; 
 char* cur_token ; 
 int cur_token_len ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  in_chat_commands ; 
 scalar_t__ in_chat_mode ; 
 int /*<<< orphan*/  modifiers ; 
 char* FUNC8 (char*,int) ; 
 char* rl_line_buffer ; 
 size_t rl_point ; 
 int FUNC9 (char const*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,char*,int,char**) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,char*,int,char**) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,char*,int,char**) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,char*,int,char**) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,char*,int,char**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct tgl_message* FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,char const*,int,int,char**,char*,size_t) ; 

char *FUNC19 (const char *text, int state) {  
#ifndef DISABLE_EXTF
  static int len;
#endif
  static int index;
  static enum command_argument mode;
  static char *command_pos;
  static int command_len;

  if (in_chat_mode) {
    char *R = 0;
    index = FUNC4 (in_chat_commands, index, text, rl_point, &R);
    return R;
  }
 
  char c = 0;
  c = rl_line_buffer[rl_point];
  rl_line_buffer[rl_point] = 0;
  if (!state) {
#ifndef DISABLE_EXTF
    len = FUNC9 (text);
#endif
    index = -1;
    
    mode = FUNC7 ();
    command_pos = cur_token;
    command_len = cur_token_len;
  } else {
    if (mode != ca_file_name && mode != ca_file_name_end && index == -1) { return 0; }
  }
  
  if (mode == ca_none || mode == ca_string || mode == ca_string_end || mode == ca_number || mode == ca_double || mode == ca_msg_id) {   
    if (c) { rl_line_buffer[rl_point] = c; }
    return 0; 
  }
  FUNC0 (command_len >= 0);

  char *R = 0;
  switch (mode & 255) {
  case ca_command:
    index = FUNC2 (index, command_pos, command_len, &R);
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case ca_user:
    if (command_len && command_pos[0] == '@') {
      index = FUNC6 (TGL_PEER_USER, index, command_pos, command_len, &R);
    } else {
      index = FUNC14 (TLS, index, command_pos, command_len, &R);    
    }
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case ca_peer:
    if (command_len && command_pos[0] == '@') {
      index = FUNC6 (0, index, command_pos, command_len, &R);
    } else {
      index = FUNC13 (TLS, index, command_pos, command_len, &R);
    }
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case ca_file_name:
  case ca_file_name_end:
    if (c) { rl_line_buffer[rl_point] = c; }
    R = FUNC8 (command_pos, state);
    return R;
  case ca_chat:
    index = FUNC11 (TLS, index, command_pos, command_len, &R);
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case ca_secret_chat:
    index = FUNC12 (TLS, index, command_pos, command_len, &R);
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case ca_channel:
    if (command_len && command_pos[0] == '@') {
      index = FUNC6 (TGL_PEER_CHANNEL, index, command_pos, command_len, &R);
    } else {
      index = FUNC10 (TLS, index, command_pos, command_len, &R);    
    }
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case ca_modifier:
    index = FUNC4 (modifiers, index, command_pos, command_len, &R);
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
  case ca_msg_string_end:
    if (autocomplete_peer) {
      if (FUNC15 (autocomplete_peer->id) == TGL_PEER_USER) {
        index = FUNC5 (autocomplete_peer, index, command_pos, command_len, &R);
      }
      if (FUNC15 (autocomplete_peer->id) == TGL_PEER_CHAT) {
        index = FUNC1 (autocomplete_peer, index, command_pos, command_len, &R);
      }
    }
    if (autocomplete_id.peer_type != (unsigned)NOT_FOUND) {
      struct tgl_message *M = FUNC16 (TLS, &autocomplete_id);
      if (M) {
        if (command_len > 0 && *command_pos == '/') {
          tgl_peer_t *P = FUNC17 (TLS, M->from_id);
          if (P) {
            index = FUNC5 (autocomplete_peer, index, command_pos, command_len, &R);
          }
        } else {
          index = FUNC3 (M, index, command_pos, command_len, &R);
        }
      }
    }
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
#ifndef DISABLE_EXTF
  case ca_extf:
    index = FUNC18 (TLS, text, len, index, &R, rl_line_buffer, rl_point);
    if (c) { rl_line_buffer[rl_point] = c; }
    return R;
#endif
  default:
    if (c) { rl_line_buffer[rl_point] = c; }
    return 0;
  }
}