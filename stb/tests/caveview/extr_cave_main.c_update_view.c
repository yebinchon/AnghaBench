
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float pending_view_x ;
 float pending_view_z ;

void update_view(float dx, float dy)
{

   pending_view_z -= dx*300;
   pending_view_x -= dy*700;
}
