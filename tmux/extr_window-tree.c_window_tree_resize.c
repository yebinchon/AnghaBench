
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_tree_modedata {int data; } ;
struct window_mode_entry {struct window_tree_modedata* data; } ;


 int mode_tree_resize (int ,int ,int ) ;

__attribute__((used)) static void
window_tree_resize(struct window_mode_entry *wme, u_int sx, u_int sy)
{
 struct window_tree_modedata *data = wme->data;

 mode_tree_resize(data->data, sx, sy);
}
