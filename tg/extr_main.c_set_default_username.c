
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ default_username ;
 int tfree_str (scalar_t__) ;
 scalar_t__ tstrdup (char const*) ;

void set_default_username (const char *s) {
  if (default_username) {
    tfree_str (default_username);
  }
  default_username = tstrdup (s);
}
