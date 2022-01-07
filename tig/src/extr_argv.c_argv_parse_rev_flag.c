
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_flags {size_t search_offset; int with_graph; int with_reflog; } ;


 int ARRAY_SIZE (char const**) ;
 scalar_t__ argv_find_rev_flag (char const**,int ,char const*,size_t,size_t*,int*,int*) ;
 size_t strlen (char const*) ;

bool
argv_parse_rev_flag(const char *arg, struct rev_flags *rev_flags)
{
 static const char *with_graph[] = {
  "--after=",
  "--all",
  "--all-match",
  "--ancestry-path",
  "--author-date-order",
  "--basic-regexp",
  "--before=",
  "--boundary",
  "--branches",
  "--branches=",
  "--cherry",
  "--cherry-mark",
  "--cherry-pick",
  "--committer=",
  "--date-order",
  "--dense",
  "--exclude=",
  "--extended-regexp",
  "--first-parent",
  "--fixed-strings",
  "--full-history",
  "--graph",
  "--glob=",
  "--left-only",
  "--max-parents=",
  "--max-age=",
  "--merge",
  "--merges",
  "--min-parents=",
  "--no-max-parents",
  "--no-min-parents",
  "--no-walk",
  "--perl-regexp",
  "--pickaxe-all",
  "--pickaxe-regex",
  "--regexp-ignore-case",
  "--remotes",
  "--remotes=",
  "--remove-empty",
  "--reverse",
  "--right-only",
  "--simplify-by-decoration",
  "--simplify-merges",
  "--since=",
  "--skip=",
  "--sparse",
  "--stdin",
  "--tags",
  "--tags=",
  "--topo-order",
  "--until=",
  "-E",
  "-F",
  "-i",
 };
 static const char *no_graph[] = {
  "--no-merges",
  "--follow",
  "--author=",
 };
 static const char *with_reflog[] = {
  "--walk-reflogs",
  "-g",
 };
 static const char *search_no_graph[] = {
  "--grep-reflog=",
  "--grep=",
  "-G",
  "-S",
 };
 size_t arglen = strlen(arg);
 bool graph = 1;
 bool reflog = 0;
 size_t search = 0;

 if (argv_find_rev_flag(with_graph, ARRAY_SIZE(with_graph), arg, arglen, ((void*)0), ((void*)0), ((void*)0)) ||
     argv_find_rev_flag(no_graph, ARRAY_SIZE(no_graph), arg, arglen, ((void*)0), &graph, ((void*)0)) ||
     argv_find_rev_flag(with_reflog, ARRAY_SIZE(with_reflog), arg, arglen, ((void*)0), ((void*)0), &reflog) ||
     argv_find_rev_flag(search_no_graph, ARRAY_SIZE(search_no_graph), arg, arglen, &search, &graph, ((void*)0))) {
  if (rev_flags) {
   rev_flags->search_offset = search ? search : arglen;
   rev_flags->with_graph = graph;
   rev_flags->with_reflog = reflog;
  }
  return 1;
 }

 return 0;
}
