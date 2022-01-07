
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int dummy; } ;


 scalar_t__ LINE_STAT_STAGED ;
 scalar_t__ LINE_STAT_UNSTAGED ;
 int diff_common_select (struct view*,struct line*,char const*) ;
 scalar_t__ stage_line_type ;

__attribute__((used)) static void
stage_select(struct view *view, struct line *line)
{
 const char *changes_msg = stage_line_type == LINE_STAT_STAGED ? "Staged changes"
    : stage_line_type == LINE_STAT_UNSTAGED ? "Unstaged changes"
    : ((void*)0);

 diff_common_select(view, line, changes_msg);
}
