
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_info {int fg; int bg; int attr; } ;


 void* COLOR_DEFAULT ;
 int SIZEOF_ARG ;
 int argv_from_string (char const**,int*,char*) ;
 scalar_t__ set_attribute (int*,char const*) ;
 scalar_t__ set_color (int*,char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static struct line_info *
parse_git_color_option(struct line_info *info, char *value)
{
 const char *argv[SIZEOF_ARG];
 int argc = 0;
 bool first_color = 1;
 int i;

 if (!argv_from_string(argv, &argc, value))
  return ((void*)0);

 info->fg = COLOR_DEFAULT;
 info->bg = COLOR_DEFAULT;
 info->attr = 0;

 for (i = 0; i < argc; i++) {
  int attr = 0;

  if (!strncmp(argv[i], "ul", 2)) {
   argv[i] = "underline";
  }
  if (set_attribute(&attr, argv[i])) {
   info->attr |= attr;

  } else if (set_color(&attr, argv[i])) {
   if (first_color)
    info->fg = attr;
   else
    info->bg = attr;
   first_color = 0;
  }
 }
 return info;
}
