
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * LastSection; int * FirstSection; } ;
typedef TYPE_1__* PINFCACHE ;
typedef scalar_t__ HINF ;


 int FREE (TYPE_1__*) ;
 int * InfpFreeSection (int *) ;

void
InfHostCloseFile(HINF InfHandle)
{
  PINFCACHE Cache;

  Cache = (PINFCACHE)InfHandle;

  if (Cache == ((void*)0))
    {
      return;
    }

  while (Cache->FirstSection != ((void*)0))
    {
      Cache->FirstSection = InfpFreeSection(Cache->FirstSection);
    }
  Cache->LastSection = ((void*)0);

  FREE(Cache);
}
