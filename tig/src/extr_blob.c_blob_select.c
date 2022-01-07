
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lineno; } ;
struct view {TYPE_2__ pos; TYPE_1__* env; struct blob_state* private; } ;
struct line {int dummy; } ;
struct blob_state {scalar_t__ file; } ;
struct TYPE_3__ {scalar_t__ lineno; int file; } ;


 int string_format (int ,char*,scalar_t__) ;

__attribute__((used)) static void
blob_select(struct view *view, struct line *line)
{
 struct blob_state *state = view->private;

 if (state->file)
  string_format(view->env->file, "%s", state->file);
 view->env->lineno = view->pos.lineno + 1;
}
