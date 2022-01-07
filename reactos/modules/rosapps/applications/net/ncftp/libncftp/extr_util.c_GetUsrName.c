
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; } ;
typedef size_t DWORD ;


 struct passwd* GetPwByName () ;
 int GetUserName (char*,size_t*) ;
 int Strncpy (char*,char const*,size_t) ;
 scalar_t__ getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 int strncpy (char*,char*,size_t) ;

void
GetUsrName(char *dst, size_t size)
{
 const char *cp;
 struct passwd *pw;

 pw = ((void*)0);






 if ((pw = GetPwByName()) == ((void*)0))
  pw = getpwuid(getuid());

 if (pw != ((void*)0))
  cp = pw->pw_name;
 else if ((cp = (const char *) getenv("LOGNAME")) == ((void*)0))
   cp = "UNKNOWN";
 (void) Strncpy(dst, cp, size);

}
