
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X_OK ;
 scalar_t__ access (char const*,int ) ;
 scalar_t__ areshell (char const*) ;

__attribute__((used)) static int
checkshell(const char *shell)
{
 if (shell == ((void*)0) || *shell != '/')
  return (0);
 if (areshell(shell))
  return (0);
 if (access(shell, X_OK) != 0)
  return (0);
 return (1);
}
