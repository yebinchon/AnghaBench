
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {TYPE_1__* env; int ref; } ;
struct line {scalar_t__ lineno; } ;
struct TYPE_2__ {int stash; } ;


 int main_select (struct view*,struct line*) ;
 int string_copy (int ,int ) ;
 int string_format (int ,char*,scalar_t__) ;

__attribute__((used)) static void
stash_select(struct view *view, struct line *line)
{
 main_select(view, line);
 string_format(view->env->stash, "stash@{%d}", line->lineno - 1);
 string_copy(view->ref, view->env->stash);
}
