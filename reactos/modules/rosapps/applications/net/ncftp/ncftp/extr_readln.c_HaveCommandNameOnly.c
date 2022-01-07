
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (int) ;

__attribute__((used)) static int
HaveCommandNameOnly(char *cmdstart)
{
 char *cp;
 for (cp = cmdstart; *cp != '\0'; cp++) {
  if (isspace((int) *cp))
   return (0);
 }
 return (1);
}
