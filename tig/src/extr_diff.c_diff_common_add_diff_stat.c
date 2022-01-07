
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int dummy; } ;


 struct line* diff_common_read_diff_stat (struct view*,char const*) ;
 int prefixcmp (char const*,char*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int strspn (char const*,char*) ;
 scalar_t__ strstr (char const*,char*) ;

struct line *
diff_common_add_diff_stat(struct view *view, const char *text, size_t offset)
{
 const char *start = text + offset;
 const char *data = start + strspn(start, " ");
 size_t len = strlen(data);
 char *pipe = strchr(data, '|');



 if (!pipe || pipe == data)
  return ((void*)0);
 if ((data[len - 1] == '-' || data[len - 1] == '+') ||
     strstr(pipe, " 0") || strstr(pipe, "Bin") || strstr(pipe, "Unmerged") ||
     (data[len - 1] == '0' && (strstr(data, "=>") || !prefixcmp(data, "..."))))
  return diff_common_read_diff_stat(view, text);
 return ((void*)0);
}
