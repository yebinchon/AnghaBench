
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_info {char* prefix; int attr; int bg; int fg; struct line_info* next; } ;
struct line_rule {char* line; int name; struct line_info info; } ;
typedef int FILE ;


 char* enum_name (int ) ;
 int io_fprintf (int *,char*,char const*,char const*,char const*,char const*,char const*,int,char*) ;
 int save_option_color_attr (int *,int ) ;
 int save_option_color_name (int *,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static bool
save_option_color(void *data, const struct line_rule *rule)
{
 FILE *file = data;
 const struct line_info *info;

 for (info = &rule->info; info; info = info->next) {
  const char *prefix = info->prefix ? info->prefix : "";
  const char *prefix_sep = info->prefix ? "." : "";
  const char *quote = *rule->line ? "\"" : "";
  const char *name = *rule->line ? rule->line : enum_name(rule->name);
  int name_width = strlen(prefix) + strlen(prefix_sep) + 2 * strlen(quote) + strlen(name);
  int padding = name_width > 30 ? 0 : 30 - name_width;

  if (!io_fprintf(file, "\ncolor %s%s%s%s%s%-*s",
          prefix, prefix_sep, quote, name, quote, padding, "")
      || !save_option_color_name(file, info->fg)
      || !save_option_color_name(file, info->bg)
      || !save_option_color_attr(file, info->attr))
   return 0;
 }

 return 1;
}
