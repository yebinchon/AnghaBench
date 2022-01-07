
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ char_u ;


 int NODE_NORMAL ;
 int NODE_WRITABLE ;
 scalar_t__ NUL ;
 scalar_t__ STRICMP (scalar_t__*,char*) ;
 scalar_t__ STRNICMP (scalar_t__*,char*,int) ;
 scalar_t__ VIM_ISDIGIT (scalar_t__) ;

int
mch_nodetype(char_u *name)
{
    if (STRICMP(name, "AUX") == 0
     || STRICMP(name, "CON") == 0
     || STRICMP(name, "CLOCK$") == 0
     || STRICMP(name, "NUL") == 0
     || STRICMP(name, "PRN") == 0
     || ((STRNICMP(name, "COM", 3) == 0
      || STRNICMP(name, "LPT", 3) == 0)
  && VIM_ISDIGIT(name[3])
  && name[4] == NUL))
 return NODE_WRITABLE;

    return NODE_NORMAL;
}
