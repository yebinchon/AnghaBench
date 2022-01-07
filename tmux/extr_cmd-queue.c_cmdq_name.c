
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {struct client* name; } ;


 int xsnprintf (char*,int,char*,struct client*) ;

__attribute__((used)) static const char *
cmdq_name(struct client *c)
{
 static char s[256];

 if (c == ((void*)0))
  return ("<global>");
 if (c->name != ((void*)0))
  xsnprintf(s, sizeof s, "<%s>", c->name);
 else
  xsnprintf(s, sizeof s, "<%p>", c);
 return (s);
}
