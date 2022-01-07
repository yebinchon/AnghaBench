
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GR_WINDOW_ID ;


 int GrDestroyWindow (int ) ;

void ui_destroy_bitmap(void * bmp)
{
  GrDestroyWindow((GR_WINDOW_ID)bmp);
}
