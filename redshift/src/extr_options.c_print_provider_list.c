
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ location_provider_t ;


 char* _ (char*) ;
 int fputs (char*,int ) ;
 int printf (char*,char*) ;
 int stdout ;

__attribute__((used)) static void
print_provider_list(const location_provider_t location_providers[])
{
 fputs(_("Available location providers:\n"), stdout);
 for (int i = 0; location_providers[i].name != ((void*)0); i++) {
  printf("  %s\n", location_providers[i].name);
 }

 fputs("\n", stdout);
 fputs(_("Specify colon-separated options with"
  "`-l PROVIDER:OPTIONS'.\n"), stdout);

 fputs(_("Try `-l PROVIDER:help' for help.\n"), stdout);
}
