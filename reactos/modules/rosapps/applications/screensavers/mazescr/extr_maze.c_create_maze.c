
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t x; size_t y; int dir; } ;
struct TYPE_3__ {size_t x; size_t y; int dir; } ;
typedef int HWND ;


 int DOOR_IN_TOP ;
 int DOOR_OUT_TOP ;
 int END_SQUARE ;
 int backup () ;
 int choose_door (int ) ;
 size_t cur_sq_x ;
 size_t cur_sq_y ;
 int hDC ;
 int** maze ;
 TYPE_2__* move_list ;
 int path_length ;
 TYPE_1__* save_path ;
 size_t sqnum ;

__attribute__((used)) static void create_maze(HWND hWnd)
{
    register int i, newdoor = 0;

    do {
        move_list[sqnum].x = cur_sq_x;
        move_list[sqnum].y = cur_sq_y;
        move_list[sqnum].dir = newdoor;
        while ((newdoor = choose_door(hDC)) == -1) {
            if (backup() == -1) {
                return;
            }
        }


        maze[cur_sq_x][cur_sq_y] |= (DOOR_OUT_TOP >> newdoor);

        switch (newdoor) {
        case 0: cur_sq_y--;
            break;
        case 1: cur_sq_x++;
            break;
        case 2: cur_sq_y++;
            break;
        case 3: cur_sq_x--;
            break;
        }
        sqnum++;


        maze[cur_sq_x][cur_sq_y] |= (DOOR_IN_TOP >> ((newdoor + 2) % 4));


        if (maze[cur_sq_x][cur_sq_y] & END_SQUARE) {
            path_length = sqnum;
            for (i = 0; i < path_length; i++) {
                save_path[i].x = move_list[i].x;
                save_path[i].y = move_list[i].y;
                save_path[i].dir = move_list[i].dir;
            }
        }
    } while (1);
}
