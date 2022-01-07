
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE_CATALOGUE ;
 int USE_HINTS ;
 int USE_OTHER_OBJECTS ;
 int USE_PAGE1 ;
 int USE_PAGE_OBJECT ;
 int USE_PAGE_SHIFT ;
 int USE_PARAMS ;
 int USE_SHARED ;

__attribute__((used)) static int
order_ge(int ui, int uj)
{
 if (((ui ^ uj) & ~USE_PAGE_OBJECT) == 0)
  return ((ui & USE_PAGE_OBJECT) == 0);

 else if (ui == 0)
  return 1;
 else if (uj == 0)
  return 0;

 else if (ui & USE_HINTS)
  return 1;
 else if (uj & USE_HINTS)
  return 0;

 else if (ui & USE_PAGE1)
  return 1;
 else if (uj & USE_PAGE1)
  return 0;

 else if (ui & USE_CATALOGUE)
  return 1;
 else if (uj & USE_CATALOGUE)
  return 0;

 else if (ui & USE_PARAMS)
  return 1;
 else if (uj & USE_PARAMS)
  return 0;

 else if (ui & USE_OTHER_OBJECTS)
  return 1;
 else if (uj & USE_OTHER_OBJECTS)
  return 0;

 else if (ui & USE_SHARED)
  return 1;
 else if (uj & USE_SHARED)
  return 0;


 return (ui>>USE_PAGE_SHIFT) >= (uj>>USE_PAGE_SHIFT);
}
