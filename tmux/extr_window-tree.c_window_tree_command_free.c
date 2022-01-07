
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_tree_modedata {int dummy; } ;


 int window_tree_destroy (struct window_tree_modedata*) ;

__attribute__((used)) static void
window_tree_command_free(void *modedata)
{
 struct window_tree_modedata *data = modedata;

 window_tree_destroy(data);
}
