
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_stat_context {char const* text; int type; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int diff_common_add_cell (struct diff_stat_context*,int,int) ;
 char* strchr (char const*,char) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static bool
diff_common_read_diff_stat_part(struct diff_stat_context *context, char c, enum line_type next_type)
{
 const char *sep = c == '|' ? strrchr(context->text, c) : strchr(context->text, c);

 if (sep == ((void*)0))
  return 0;

 diff_common_add_cell(context, sep - context->text, 0);
 context->text = sep;
 context->type = next_type;

 return 1;
}
