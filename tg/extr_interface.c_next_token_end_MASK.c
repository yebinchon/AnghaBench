#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* cur_token ; 
 int cur_token_end_str ; 
 int cur_token_len ; 
 scalar_t__ cur_token_quoted ; 
 int /*<<< orphan*/  force_end_mode ; 
 char* line_ptr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3 (void) {
  FUNC2 ();
  
  if (*line_ptr && *line_ptr != '"' && *line_ptr != '\'') {
    cur_token_quoted = 0;
    cur_token = line_ptr;
    while (*line_ptr) { line_ptr ++; }
    cur_token_len = line_ptr - cur_token;
    while (((unsigned char)cur_token[cur_token_len - 1]) <= ' ' && cur_token_len >= 0) { 
      cur_token_len --;
    }
    FUNC0 (cur_token_len > 0);
    cur_token_end_str = !force_end_mode;
    return;
  } else {
    if (*line_ptr) {
      FUNC1 ();
      FUNC2 ();
      if (*line_ptr) {
        cur_token_len = -1; 
      }
    } else {
      FUNC1 ();
    }
  }
}