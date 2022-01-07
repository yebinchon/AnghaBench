
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int gOneTimeMessagesSeen ;
 int memcpy (char*,int ,int) ;
 scalar_t__ strcmp (char const* const,char*) ;
 char* strtok (char*,char*) ;

int
HasSeenOneTimeMessage(const char *const msg)
{
 char buf[256];
 char *a, *b;

 memcpy(buf, gOneTimeMessagesSeen, sizeof(buf));
 for (a = buf; (b = strtok(a, ",\n")) != ((void*)0); a = ((void*)0)) {
  if (strcmp(msg, b) == 0)
   return (1);
 }
 return (0);
}
