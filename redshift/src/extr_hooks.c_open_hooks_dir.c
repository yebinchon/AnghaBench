
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;
typedef int DIR ;


 int MAX_HOOK_PATH ;
 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 int * opendir (char*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static DIR *
open_hooks_dir(char *hp)
{
 char *env;

 if ((env = getenv("XDG_CONFIG_HOME")) != ((void*)0) &&
     env[0] != '\0') {
  snprintf(hp, MAX_HOOK_PATH, "%s/redshift/hooks", env);
  return opendir(hp);
 }

 if ((env = getenv("HOME")) != ((void*)0) &&
     env[0] != '\0') {
  snprintf(hp, MAX_HOOK_PATH, "%s/.config/redshift/hooks", env);
  return opendir(hp);
 }


 struct passwd *pwd = getpwuid(getuid());
 snprintf(hp, MAX_HOOK_PATH, "%s/.config/redshift/hooks", pwd->pw_dir);
 return opendir(hp);



}
