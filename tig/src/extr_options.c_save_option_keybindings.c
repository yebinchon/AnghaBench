
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int foreach_key (int ,int *,int) ;
 int io_fprintf (int *,char*,char*) ;
 int save_option_keybinding ;

__attribute__((used)) static bool
save_option_keybindings(FILE *file)
{
 if (!io_fprintf(file, "%s", "\n\n## Keybindings\n"))
  return 0;

 return foreach_key(save_option_keybinding, file, 0);
}
