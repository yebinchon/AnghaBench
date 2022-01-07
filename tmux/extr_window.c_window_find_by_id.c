
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window {int id; } ;


 struct window* RB_FIND (int ,int *,struct window*) ;
 int windows ;

struct window *
window_find_by_id(u_int id)
{
 struct window w;

 w.id = id;
 return (RB_FIND(windows, &windows, &w));
}
