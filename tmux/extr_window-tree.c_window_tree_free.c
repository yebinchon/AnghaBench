
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_tree_modedata {int dead; int data; } ;
struct window_mode_entry {struct window_tree_modedata* data; } ;


 int mode_tree_free (int ) ;
 int window_tree_destroy (struct window_tree_modedata*) ;

__attribute__((used)) static void
window_tree_free(struct window_mode_entry *wme)
{
 struct window_tree_modedata *data = wme->data;

 if (data == ((void*)0))
  return;

 data->dead = 1;
 mode_tree_free(data->data);
 window_tree_destroy(data);
}
