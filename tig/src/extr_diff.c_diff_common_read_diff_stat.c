
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int dummy; } ;
struct diff_stat_context {char const* member_0; int text; int member_1; } ;


 int LINE_DEFAULT ;
 int LINE_DIFF_ADD ;
 int LINE_DIFF_DEL ;
 int LINE_DIFF_STAT ;
 int diff_common_add_cell (struct diff_stat_context*,int ,int) ;
 struct line* diff_common_add_line (struct view*,char const*,int ,struct diff_stat_context*) ;
 scalar_t__ diff_common_read_diff_stat_part (struct diff_stat_context*,char,int ) ;
 int strlen (int ) ;

__attribute__((used)) static struct line *
diff_common_read_diff_stat(struct view *view, const char *text)
{
 struct diff_stat_context context = { text, LINE_DIFF_STAT };

 diff_common_read_diff_stat_part(&context, '|', LINE_DEFAULT);
 if (diff_common_read_diff_stat_part(&context, 'B', LINE_DEFAULT)) {

  diff_common_read_diff_stat_part(&context, ' ', LINE_DIFF_DEL);
  diff_common_read_diff_stat_part(&context, '-', LINE_DEFAULT);
  diff_common_read_diff_stat_part(&context, ' ', LINE_DIFF_ADD);
  diff_common_read_diff_stat_part(&context, 'b', LINE_DEFAULT);

 } else {
  diff_common_read_diff_stat_part(&context, '+', LINE_DIFF_ADD);
  diff_common_read_diff_stat_part(&context, '-', LINE_DIFF_DEL);
 }
 diff_common_add_cell(&context, strlen(context.text), 0);

 return diff_common_add_line(view, text, LINE_DIFF_STAT, &context);
}
