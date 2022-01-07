
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int dummy; } ;


 int diff_common_select (struct view*,struct line*,char*) ;

__attribute__((used)) static void
diff_select(struct view *view, struct line *line)
{
 diff_common_select(view, line, "Changes");
}
