
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 scalar_t__ getenv (char*) ;
 char* getlogin () ;
 struct passwd* getpwnam (char*) ;

struct passwd *
GetPwByName(void)
{
 char *cp;
 struct passwd *pw;

 cp = getlogin();
 if (cp == ((void*)0)) {
  cp = (char *) getenv("LOGNAME");
  if (cp == ((void*)0))
   cp = (char *) getenv("USER");
 }
 pw = ((void*)0);
 if (cp != ((void*)0))
  pw = getpwnam(cp);
 return (pw);
}
