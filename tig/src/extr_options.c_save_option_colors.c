
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int foreach_line_rule (int ,int *) ;
 int io_fprintf (int *,char*,char*) ;
 int save_option_color ;

__attribute__((used)) static bool
save_option_colors(FILE *file)
{
 if (!io_fprintf(file, "%s", "\n\n## Colors\n"))
  return 0;

 return foreach_line_rule(save_option_color, file);
}
