
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;
struct line {int dummy; } ;
struct commit {int id; } ;


 struct ref* get_ref_list (int ) ;
 scalar_t__ main_check_commit_refs (struct line const*) ;
 int main_mark_no_commit_refs (struct line const*) ;

__attribute__((used)) static inline const struct ref *
main_get_commit_refs(const struct line *line, struct commit *commit)
{
 const struct ref *refs = ((void*)0);

 if (main_check_commit_refs(line) && !(refs = get_ref_list(commit->id)))
  main_mark_no_commit_refs(line);

 return refs;
}
