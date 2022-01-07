
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char* cur_token ;
 int cur_token_end_str ;
 int cur_token_len ;
 scalar_t__ cur_token_quoted ;
 int force_end_mode ;
 char* line_ptr ;
 int next_token () ;
 int skip_wspc () ;

void next_token_end (void) {
  skip_wspc ();

  if (*line_ptr && *line_ptr != '"' && *line_ptr != '\'') {
    cur_token_quoted = 0;
    cur_token = line_ptr;
    while (*line_ptr) { line_ptr ++; }
    cur_token_len = line_ptr - cur_token;
    while (((unsigned char)cur_token[cur_token_len - 1]) <= ' ' && cur_token_len >= 0) {
      cur_token_len --;
    }
    assert (cur_token_len > 0);
    cur_token_end_str = !force_end_mode;
    return;
  } else {
    if (*line_ptr) {
      next_token ();
      skip_wspc ();
      if (*line_ptr) {
        cur_token_len = -1;
      }
    } else {
      next_token ();
    }
  }
}
