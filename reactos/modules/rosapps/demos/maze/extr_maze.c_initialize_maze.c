
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DOOR_IN_TOP ;
 int DOOR_OUT_TOP ;
 int END_SQUARE ;
 int START_SQUARE ;
 int WALL_BOTTOM ;
 int WALL_LEFT ;
 int WALL_RIGHT ;
 int WALL_TOP ;
 int cur_sq_x ;
 int cur_sq_y ;
 int end_dir ;
 int end_x ;
 int end_y ;
 int get_random (int) ;
 int** maze ;
 int maze_size_x ;
 int maze_size_y ;
 scalar_t__ sqnum ;
 int start_dir ;
 int start_x ;
 int start_y ;

__attribute__((used)) static void
initialize_maze()
{
  register int i, j, wall;


  for ( i=0; i<maze_size_x; i++) {
    for ( j=0; j<maze_size_y; j++) {
      maze[i][j] = 0;
    }
  }


  for ( i=0; i<maze_size_x; i++ ) {
    maze[i][0] |= WALL_TOP;
  }


  for ( j=0; j<maze_size_y; j++ ) {
    maze[maze_size_x-1][j] |= WALL_RIGHT;
  }


  for ( i=0; i<maze_size_x; i++ ) {
    maze[i][maze_size_y-1] |= WALL_BOTTOM;
  }


  for ( j=0; j<maze_size_y; j++ ) {
    maze[0][j] |= WALL_LEFT;
  }


  wall = get_random(4);
  switch (wall) {
  case 0:
    i = get_random(maze_size_x);
    j = 0;
    break;
  case 1:
    i = maze_size_x - 1;
    j = get_random(maze_size_y);
    break;
  case 2:
    i = get_random(maze_size_x);
    j = maze_size_y - 1;
    break;
  case 3:
    i = 0;
    j = get_random(maze_size_y);
    break;
  }
  maze[i][j] |= START_SQUARE;
  maze[i][j] |= ( DOOR_IN_TOP >> wall );
  maze[i][j] &= ~( WALL_TOP >> wall );
  cur_sq_x = i;
  cur_sq_y = j;
  start_x = i;
  start_y = j;
  start_dir = wall;
  sqnum = 0;


  wall = (wall + 2)%4;
  switch (wall) {
  case 0:
    i = get_random(maze_size_x);
    j = 0;
    break;
  case 1:
    i = maze_size_x - 1;
    j = get_random(maze_size_y);
    break;
  case 2:
    i = get_random(maze_size_x);
    j = maze_size_y - 1;
    break;
  case 3:
    i = 0;
    j = get_random(maze_size_y);
    break;
  }
  maze[i][j] |= END_SQUARE;
  maze[i][j] |= ( DOOR_OUT_TOP >> wall );
  maze[i][j] &= ~( WALL_TOP >> wall );
  end_x = i;
  end_y = j;
  end_dir = wall;
}
