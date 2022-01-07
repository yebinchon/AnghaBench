
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char const* pw_shell; } ;


 char const* _PATH_BSHELL ;
 scalar_t__ checkshell (char const*) ;
 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;

__attribute__((used)) static const char *
getshell(void)
{
 struct passwd *pw;
 const char *shell;

 shell = getenv("SHELL");
 if (checkshell(shell))
  return (shell);

 pw = getpwuid(getuid());
 if (pw != ((void*)0) && checkshell(pw->pw_shell))
  return (pw->pw_shell);

 return (_PATH_BSHELL);
}
