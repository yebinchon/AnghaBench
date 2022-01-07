
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;


 int GL_SCISSOR_TEST ;
 int glDisable (int ) ;

void ui_tree_end(struct list *list)
{
 glDisable(GL_SCISSOR_TEST);
}
