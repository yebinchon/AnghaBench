
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int y; int x; } ;


 int cur_sq_x ;
 int cur_sq_y ;
 TYPE_1__* move_list ;
 size_t sqnum ;

__attribute__((used)) static long
backup()
{
  sqnum--;
  if (0 <= sqnum) {
   cur_sq_x = move_list[sqnum].x;
   cur_sq_y = move_list[sqnum].y;
  }
  return ( sqnum );
}
