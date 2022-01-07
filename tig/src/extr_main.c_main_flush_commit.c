
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct commit {scalar_t__* id; } ;


 int LINE_MAIN_COMMIT ;
 int main_add_commit (struct view*,int ,struct commit*,char*,int) ;

__attribute__((used)) static inline void
main_flush_commit(struct view *view, struct commit *commit)
{
 if (*commit->id)
  main_add_commit(view, LINE_MAIN_COMMIT, commit, "", 0);
}
