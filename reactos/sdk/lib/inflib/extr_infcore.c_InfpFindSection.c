
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* FirstSection; } ;
struct TYPE_5__ {struct TYPE_5__* Next; int Name; } ;
typedef TYPE_1__* PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHE ;
typedef int * PCWSTR ;


 scalar_t__ strcmpiW (int ,int *) ;

PINFCACHESECTION
InfpFindSection(PINFCACHE Cache,
                PCWSTR Name)
{
  PINFCACHESECTION Section = ((void*)0);

  if (Cache == ((void*)0) || Name == ((void*)0))
    {
      return ((void*)0);
    }


  Section = Cache->FirstSection;
  while (Section != ((void*)0))
    {
      if (strcmpiW(Section->Name, Name) == 0)
        {
          return Section;
        }


      Section = Section->Next;
    }

  return ((void*)0);
}
