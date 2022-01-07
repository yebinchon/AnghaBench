
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct diff_stat_context {char const* member_0; int member_1; int member_2; int text; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int LINE_DIFF_ADD ;
 int LINE_DIFF_ADD_HIGHLIGHT ;
 int LINE_DIFF_DEL_HIGHLIGHT ;
 int diff_common_add_cell (struct diff_stat_context*,int ,int) ;
 scalar_t__ diff_common_add_cell_until (struct diff_stat_context*,char const*,int const) ;
 int diff_common_add_line (struct view*,char const*,int,struct diff_stat_context*) ;
 int strlen (int ) ;

__attribute__((used)) static bool
diff_common_highlight(struct view *view, const char *text, enum line_type type)
{
 struct diff_stat_context context = { text, type, 1 };
 enum line_type hi_type = type == LINE_DIFF_ADD
     ? LINE_DIFF_ADD_HIGHLIGHT : LINE_DIFF_DEL_HIGHLIGHT;
 const char *codes[] = { "\x1b[7m", "\x1b[27m" };
 const enum line_type types[] = { hi_type, type };
 int i;

 for (i = 0; diff_common_add_cell_until(&context, codes[i], types[i]); i = (i + 1) % 2)
  ;

 diff_common_add_cell(&context, strlen(context.text), 1);
 return diff_common_add_line(view, text, type, &context);
}
