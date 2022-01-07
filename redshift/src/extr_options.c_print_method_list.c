
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ gamma_method_t ;


 char* _ (char*) ;
 int fputs (char*,int ) ;
 int printf (char*,char*) ;
 int stdout ;

__attribute__((used)) static void
print_method_list(const gamma_method_t *gamma_methods)
{
 fputs(_("Available adjustment methods:\n"), stdout);
 for (int i = 0; gamma_methods[i].name != ((void*)0); i++) {
  printf("  %s\n", gamma_methods[i].name);
 }

 fputs("\n", stdout);
 fputs(_("Specify colon-separated options with"
  " `-m METHOD:OPTIONS'.\n"), stdout);

 fputs(_("Try `-m METHOD:help' for help.\n"), stdout);
}
