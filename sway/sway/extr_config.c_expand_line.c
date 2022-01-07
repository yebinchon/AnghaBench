
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWAY_ERROR ;
 char* calloc (int,int) ;
 int snprintf (char*,int,char*,char const*,char*,char const*,char*) ;
 int strlen (char const*) ;
 int sway_log (int ,char*) ;

__attribute__((used)) static char *expand_line(const char *block, const char *line, bool add_brace) {
 int size = (block ? strlen(block) + 1 : 0) + strlen(line)
  + (add_brace ? 2 : 0) + 1;
 char *expanded = calloc(1, size);
 if (!expanded) {
  sway_log(SWAY_ERROR, "Cannot allocate expanded line buffer");
  return ((void*)0);
 }
 snprintf(expanded, size, "%s%s%s%s", block ? block : "",
   block ? " " : "", line, add_brace ? " {" : "");
 return expanded;
}
