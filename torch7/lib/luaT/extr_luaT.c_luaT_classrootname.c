
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

const char* luaT_classrootname(const char *tname)
{
  int idx;
  int sz = strlen(tname);

  for(idx = sz-1; idx >= 0 ; idx--)
  {
    if(tname[idx] == '.')
      return tname+idx+1;
  }
  return tname;
}
