
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;


 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;

const char *
find_home(void)
{
 struct passwd *pw;
 static const char *home;

 if (home != ((void*)0))
  return (home);

 home = getenv("HOME");
 if (home == ((void*)0) || *home == '\0') {
  pw = getpwuid(getuid());
  if (pw != ((void*)0))
   home = pw->pw_dir;
  else
   home = ((void*)0);
 }

 return (home);
}
