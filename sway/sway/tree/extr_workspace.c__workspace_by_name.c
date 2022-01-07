
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int name; } ;


 scalar_t__ strcasecmp (int ,void*) ;

__attribute__((used)) static bool _workspace_by_name(struct sway_workspace *ws, void *data) {
 return strcasecmp(ws->name, data) == 0;
}
