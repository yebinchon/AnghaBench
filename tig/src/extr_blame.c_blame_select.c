
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lineno; } ;
struct view {TYPE_2__ pos; TYPE_1__* env; } ;
struct line {struct blame* data; } ;
struct blame_commit {scalar_t__ filename; int id; } ;
struct blame {struct blame_commit* commit; } ;
struct TYPE_3__ {scalar_t__ lineno; int file; int commit; } ;


 int string_copy_rev (int ,int ) ;
 int string_format (int ,char*,scalar_t__) ;
 int string_ncopy (int ,char*,int) ;
 scalar_t__ string_rev_is_null (int ) ;

__attribute__((used)) static void
blame_select(struct view *view, struct line *line)
{
 struct blame *blame = line->data;
 struct blame_commit *commit = blame->commit;

 if (!commit)
  return;

 if (string_rev_is_null(commit->id))
  string_ncopy(view->env->commit, "HEAD", 4);
 else
  string_copy_rev(view->env->commit, commit->id);

 if (commit->filename)
  string_format(view->env->file, "%s", commit->filename);
 view->env->lineno = view->pos.lineno + 1;
}
