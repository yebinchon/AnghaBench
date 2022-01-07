
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xfree (void*) ;

void ui_destroy_cursor(void* cursor)
{
  if (cursor != ((void*)0))
    xfree(cursor);
}
