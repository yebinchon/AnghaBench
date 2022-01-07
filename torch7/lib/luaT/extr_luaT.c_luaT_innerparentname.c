
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

int luaT_innerparentname(const char *tname, char *parent_name)
{
  int sz = strlen(tname);
  int tail, head;
  for(tail = sz-1; tail >= 0 ; tail--)
    if(tname[tail] == '.') break;

  if (tail == 0) return 0;

  for(head = tail-1; head >= 0; head--)
    if(tname[head] == '.') break;

  head += 1;
  tail -= head;
  strncpy(parent_name, tname+head, tail);
  parent_name[tail] = '\0';
  return 1;
}
