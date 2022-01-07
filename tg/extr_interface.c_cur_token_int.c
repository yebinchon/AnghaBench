
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long NOT_FOUND ;
 char* cur_token ;
 size_t cur_token_len ;
 long long strtoll (char*,char**,int ) ;

long long cur_token_int (void) {
  if (cur_token_len <= 0) {
    return NOT_FOUND;
  } else {
    char c = cur_token[cur_token_len];
    cur_token[cur_token_len] = 0;
    char *end = 0;
    long long x = strtoll (cur_token, &end, 0);
    cur_token[cur_token_len] = c;
    if (end != cur_token + cur_token_len) {
      return NOT_FOUND;
    } else {
      return x;
    }
  }
}
