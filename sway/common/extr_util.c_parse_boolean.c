
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcasecmp (char const*,char*) ;

bool parse_boolean(const char *boolean, bool current) {
 if (strcasecmp(boolean, "1") == 0
   || strcasecmp(boolean, "yes") == 0
   || strcasecmp(boolean, "on") == 0
   || strcasecmp(boolean, "true") == 0
   || strcasecmp(boolean, "enable") == 0
   || strcasecmp(boolean, "enabled") == 0
   || strcasecmp(boolean, "active") == 0) {
  return 1;
 } else if (strcasecmp(boolean, "toggle") == 0) {
  return !current;
 }

 return 0;
}
