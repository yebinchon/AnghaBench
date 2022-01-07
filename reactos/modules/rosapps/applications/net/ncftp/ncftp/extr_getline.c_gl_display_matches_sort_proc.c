
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char const*) ;

__attribute__((used)) static int
gl_display_matches_sort_proc(const void *a, const void *b)
{
 return (strcasecmp(
  * ((const char **) a),
  * ((const char **) b)
 ));
}
