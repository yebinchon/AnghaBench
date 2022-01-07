
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_column {int dummy; } ;
struct view {int regex; } ;
struct ref {int name; struct ref* next; } ;
typedef int regmatch_t ;


 int regexec (int ,int ,int,int *,int ) ;

__attribute__((used)) static bool
grep_refs(struct view *view, struct view_column *column, const struct ref *ref)
{
 regmatch_t pmatch;

 for (; ref; ref = ref->next) {
  if (!regexec(view->regex, ref->name, 1, &pmatch, 0))
   return 1;
 }

 return 0;
}
