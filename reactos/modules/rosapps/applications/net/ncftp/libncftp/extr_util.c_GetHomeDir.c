
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;


 struct passwd* GetPwByName () ;
 int Strncat (char*,char const*,size_t) ;
 int Strncpy (char*,char const*,size_t) ;
 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;

void
GetHomeDir(char *dst, size_t size)
{
 const char *cp;
 struct passwd *pw;

 pw = ((void*)0);






 if ((pw = GetPwByName()) == ((void*)0))
  pw = getpwuid(getuid());

 if (pw != ((void*)0))
  cp = pw->pw_dir;
 else if ((cp = (const char *) getenv("LOGNAME")) == ((void*)0))
   cp = ".";
 (void) Strncpy(dst, cp, size);

}
