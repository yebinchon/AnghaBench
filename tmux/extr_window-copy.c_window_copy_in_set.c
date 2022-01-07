
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {TYPE_1__* backing; } ;
struct grid_cell {int flags; int data; } ;
struct TYPE_2__ {int grid; } ;


 int GRID_FLAG_PADDING ;
 int grid_get_cell (int ,int ,int ,struct grid_cell*) ;
 int utf8_cstrhas (char const*,int *) ;

__attribute__((used)) static int
window_copy_in_set(struct window_mode_entry *wme, u_int px, u_int py,
    const char *set)
{
 struct window_copy_mode_data *data = wme->data;
 struct grid_cell gc;

 grid_get_cell(data->backing->grid, px, py, &gc);
 if (gc.flags & GRID_FLAG_PADDING)
  return (0);
 return (utf8_cstrhas(set, &gc.data));
}
