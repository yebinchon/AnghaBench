
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int dummy; } ;


 int ARRAY_SIZE (char const**) ;
 int LINE_DIFF_ADD_FILE ;
 int LINE_DIFF_HEADER ;
 int STRING_SIZE (char*) ;
 char* box_text (struct line*) ;
 struct line* find_next_line_by_type (struct view*,struct line*,int ) ;
 struct line* find_prev_line_by_type (struct view*,struct line*,int ) ;
 scalar_t__ opt_diff_noprefix ;
 int prefixcmp (char const*,char*) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

const char *
diff_get_pathname(struct view *view, struct line *line)
{
 struct line *header;
 const char *dst;
 const char *prefixes[] = { "diff --cc ", "diff --combined " };
 const char *name;
 int i;

 header = find_prev_line_by_type(view, line, LINE_DIFF_HEADER);
 if (!header)
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(prefixes); i++) {
  dst = strstr(box_text(header), prefixes[i]);
  if (dst)
   return dst + strlen(prefixes[i]);
 }

 header = find_next_line_by_type(view, header, LINE_DIFF_ADD_FILE);
 if (!header)
  return ((void*)0);

 name = box_text(header);
 if (!prefixcmp(name, "+++ "))
  name += STRING_SIZE("+++ ");

 if (opt_diff_noprefix)
  return name;


 if (!prefixcmp(name, "b/") || !prefixcmp(name, "w/"))
  name += STRING_SIZE("b/");
 return name;
}
