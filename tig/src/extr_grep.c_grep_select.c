
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {TYPE_1__* env; int ref; } ;
struct line {int dummy; } ;
struct grep_line {scalar_t__ lineno; int * file; } ;
struct TYPE_2__ {scalar_t__ lineno; int file; scalar_t__* ref; } ;


 struct grep_line* grep_get_line (struct line*) ;
 int string_ncopy (int ,int *,int ) ;
 int strlen (int *) ;

__attribute__((used)) static void
grep_select(struct view *view, struct line *line)
{
 struct grep_line *grep = grep_get_line(line);

 if (!*grep->file)
  return;
 view->env->ref[0] = 0;
 string_ncopy(view->env->file, grep->file, strlen(grep->file));
 string_ncopy(view->ref, grep->file, strlen(grep->file));
 view->env->lineno = grep->lineno + 1;
}
