
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workspace_config {int workspace; } ;


 int lenient_strcmp (int ,int ) ;

int workspace_output_cmp_workspace(const void *a, const void *b) {
 const struct workspace_config *wsa = a, *wsb = b;
 return lenient_strcmp(wsa->workspace, wsb->workspace);
}
