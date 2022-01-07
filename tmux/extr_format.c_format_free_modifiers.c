
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct format_modifier {int argv; int argc; } ;


 int cmd_free_argv (int ,int ) ;
 int free (struct format_modifier*) ;

__attribute__((used)) static void
format_free_modifiers(struct format_modifier *list, u_int count)
{
 u_int i;

 for (i = 0; i < count; i++)
  cmd_free_argv(list[i].argc, list[i].argv);
 free(list);
}
