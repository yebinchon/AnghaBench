
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grid_line {int dummy; } ;
struct grid {int dummy; } ;


 struct grid_line* grid_reflow_add (struct grid*,int) ;
 int grid_reflow_dead (struct grid_line*) ;
 int memcpy (struct grid_line*,struct grid_line*,int) ;

__attribute__((used)) static struct grid_line *
grid_reflow_move(struct grid *gd, struct grid_line *from)
{
 struct grid_line *to;

 to = grid_reflow_add(gd, 1);
 memcpy(to, from, sizeof *to);
 grid_reflow_dead(from);
 return (to);
}
