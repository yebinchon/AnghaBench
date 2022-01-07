
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {char* name; } ;


 scalar_t__ isdigit (char) ;

__attribute__((used)) static bool _workspace_by_number(struct sway_workspace *ws, void *data) {
 char *name = data;
 char *ws_name = ws->name;
 while (isdigit(*name)) {
  if (*name++ != *ws_name++) {
   return 0;
  }
 }
 return !isdigit(*ws_name);
}
