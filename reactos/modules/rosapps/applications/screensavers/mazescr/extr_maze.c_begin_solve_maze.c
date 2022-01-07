
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t x; size_t y; int dir; } ;
typedef int HWND ;


 int WALL_TOP ;
 int end_dir ;
 size_t end_x ;
 size_t end_y ;
 int** maze ;
 TYPE_1__* path ;
 size_t pathi ;
 int start_dir ;
 size_t start_x ;
 size_t start_y ;

__attribute__((used)) static void begin_solve_maze(HWND hWnd)
{

    maze[start_x][start_y] |= (WALL_TOP >> start_dir);
    maze[end_x][end_y] |= (WALL_TOP >> end_dir);


    pathi = 0;
    path[pathi].x = end_x;
    path[pathi].y = end_y;
    path[pathi].dir = -1;
}
