
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GR_CURSOR_ID ;


 int GrDestroyCursor (int ) ;

void ui_destroy_cursor(void * cursor)
{
  GrDestroyCursor((GR_CURSOR_ID)cursor);
}
