
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dir; size_t x; size_t y; } ;
typedef int HWND ;


 int START_SQUARE ;
 int WALL_TOP ;
 int draw_solid_square (int,int,int,int ,int ) ;
 int enter_square (size_t,int ,int ) ;
 int hBrushDead ;
 int hBrushLiving ;
 int hDC ;
 int** maze ;
 TYPE_1__* path ;
 size_t pathi ;

__attribute__((used)) static int solve_maze(HWND hWnd)
{
    int ret;
    int action_done;

    do {
        action_done = 1;
        if (++path[pathi].dir >= 4) {
            pathi--;
            draw_solid_square((int) (path[pathi].x), (int) (path[pathi].y), (int) (path[pathi].dir), hDC, hBrushDead);
            ret = 0;
        }
        else if (!(maze[path[pathi].x][path[pathi].y] & (WALL_TOP >> path[pathi].dir)) &&
            ((pathi == 0) || ((path[pathi].dir != (int) (path[pathi - 1].dir + 2) % 4)))) {
            enter_square(pathi, hDC, hBrushLiving);
            pathi++;
            if (maze[path[pathi].x][path[pathi].y] & START_SQUARE) {

                ret = 1;
            }
            else {
                ret = 0;
            }
        }
        else {
            action_done = 0;
        }
    } while (!action_done);
    return ret;
}
