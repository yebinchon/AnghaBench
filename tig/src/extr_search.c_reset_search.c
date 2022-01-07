
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {scalar_t__ matched_lines; int * matched_line; } ;


 int free (int *) ;

void
reset_search(struct view *view)
{
 free(view->matched_line);
 view->matched_line = ((void*)0);
 view->matched_lines = 0;
}
