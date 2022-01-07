
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct workspace_config {int workspace; } ;
struct TYPE_4__ {TYPE_1__* workspace_configs; } ;
struct TYPE_3__ {int length; struct workspace_config** items; } ;


 TYPE_2__* config ;
 scalar_t__ strcmp (int ,char const*) ;

struct workspace_config *workspace_find_config(const char *ws_name) {
 for (int i = 0; i < config->workspace_configs->length; ++i) {
  struct workspace_config *wsc = config->workspace_configs->items[i];
  if (strcmp(wsc->workspace, ws_name) == 0) {
   return wsc;
  }
 }
 return ((void*)0);
}
