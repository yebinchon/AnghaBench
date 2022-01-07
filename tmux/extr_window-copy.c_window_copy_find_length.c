
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {TYPE_1__* backing; } ;
struct TYPE_2__ {int grid; } ;


 int grid_line_length (int ,int ) ;

__attribute__((used)) static u_int
window_copy_find_length(struct window_mode_entry *wme, u_int py)
{
 struct window_copy_mode_data *data = wme->data;

 return (grid_line_length(data->backing->grid, py));
}
