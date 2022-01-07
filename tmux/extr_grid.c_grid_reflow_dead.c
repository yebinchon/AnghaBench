
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grid_line {int flags; } ;


 int GRID_LINE_DEAD ;
 int memset (struct grid_line*,int ,int) ;

__attribute__((used)) static void
grid_reflow_dead(struct grid_line *gl)
{
 memset(gl, 0, sizeof *gl);
 gl->flags = GRID_LINE_DEAD;
}
