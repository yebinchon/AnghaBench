
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* left; void* bottom; void* right; void* top; } ;
struct workspace_config {TYPE_1__ gaps_outer; void* gaps_inner; int outputs; int workspace; } ;
struct TYPE_4__ {int workspace_configs; } ;


 void* INT_MIN ;
 struct workspace_config* calloc (int,int) ;
 TYPE_2__* config ;
 int create_list () ;
 int list_add (int ,struct workspace_config*) ;
 int strdup (char*) ;
 struct workspace_config* workspace_find_config (char*) ;

__attribute__((used)) static struct workspace_config *workspace_config_find_or_create(char *ws_name) {
 struct workspace_config *wsc = workspace_find_config(ws_name);
 if (wsc) {
  return wsc;
 }
 wsc = calloc(1, sizeof(struct workspace_config));
 if (!wsc) {
  return ((void*)0);
 }
 wsc->workspace = strdup(ws_name);
 wsc->outputs = create_list();
 wsc->gaps_inner = INT_MIN;
 wsc->gaps_outer.top = INT_MIN;
 wsc->gaps_outer.right = INT_MIN;
 wsc->gaps_outer.bottom = INT_MIN;
 wsc->gaps_outer.left = INT_MIN;
 list_add(config->workspace_configs, wsc);
 return wsc;
}
