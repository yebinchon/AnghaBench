
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ readline_disabled ;
 int rl_set_prompt (char const*) ;

void set_prompt (const char *s) {
  if (readline_disabled) { return; }
  rl_set_prompt (s);
}
