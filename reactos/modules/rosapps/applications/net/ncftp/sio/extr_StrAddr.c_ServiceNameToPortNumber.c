
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {scalar_t__ s_port; } ;
typedef int str ;


 int ISALNUM (char) ;
 unsigned int atoi (char*) ;
 struct servent* getservbyname (char*,char*) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ ntohs (unsigned short) ;
 int strncpy (char*,char const* const,int) ;

__attribute__((used)) static unsigned int
ServiceNameToPortNumber(const char *const s)
{
 char str[64];
 char *cp;
 struct servent *sp;

 strncpy(str, s, sizeof(str) - 1);
 str[sizeof(str) - 1] = '\0';
 cp = str;
 if (isdigit(*cp)) {
  while (isdigit(*cp))
   cp++;
  *cp = '\0';
  return (atoi(str));
 }
 for (;; cp++) {
  if ((*cp == '\0')
   || ((!ISALNUM(*cp)) && (*cp != '-') && (*cp != '_')))
    break;
 }
 *cp = '\0';

 sp = getservbyname(str, "tcp");
 if (sp != ((void*)0)) {

  return ((unsigned int) ntohs((unsigned short) sp->s_port));
 }
 sp = getservbyname(str, "udp");
 if (sp != ((void*)0)) {

  return ((unsigned int) ntohs((unsigned short) sp->s_port));
 }
 return (0);
}
