
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {size_t lines; TYPE_1__* line; } ;
struct blame_commit {int id; } ;
struct blame {struct blame_commit* commit; } ;
struct TYPE_2__ {struct blame* data; } ;


 scalar_t__ SIZEOF_REV ;
 struct blame_commit* calloc (int,int) ;
 int string_ncopy (int ,char const*,scalar_t__) ;
 int strncmp (int ,char const*,scalar_t__) ;

__attribute__((used)) static struct blame_commit *
get_blame_commit(struct view *view, const char *id)
{
 size_t i;

 for (i = 0; i < view->lines; i++) {
  struct blame *blame = view->line[i].data;

  if (!blame->commit)
   continue;

  if (!strncmp(blame->commit->id, id, SIZEOF_REV - 1))
   return blame->commit;
 }

 {
  struct blame_commit *commit = calloc(1, sizeof(*commit));

  if (commit)
   string_ncopy(commit->id, id, SIZEOF_REV);
  return commit;
 }
}
