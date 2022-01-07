
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_finder_line {char* text; } ;


 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static size_t
file_finder_line_matches(struct file_finder_line *line, const char **search)
{
 const char *text = line->text;
 const char *pos;
 size_t matches = 0;

 for (; *text && *search && (pos = strstr(text, *search)); search++) {
  text = pos + strlen(*search);
  matches++;
 }

 return matches;
}
