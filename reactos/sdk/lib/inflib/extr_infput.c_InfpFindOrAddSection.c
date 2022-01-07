
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int Id; } ;
struct TYPE_8__ {int Section; scalar_t__ Line; int Inf; } ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHESECTION ;
typedef int PINFCACHE ;
typedef int PCWSTR ;
typedef int INFSTATUS ;
typedef int INFCONTEXT ;


 int DPRINT (char*,...) ;
 int DPRINT1 (char*) ;
 int FREE (TYPE_1__*) ;
 int INF_STATUS_NO_MEMORY ;
 int INF_STATUS_SUCCESS ;
 TYPE_2__* InfpAddSection (int ,int ) ;
 TYPE_2__* InfpFindSection (int ,int ) ;
 TYPE_1__* MALLOC (int) ;

INFSTATUS
InfpFindOrAddSection(PINFCACHE Cache,
                     PCWSTR Section,
                     PINFCONTEXT *Context)
{
  PINFCACHESECTION CacheSection;
  DPRINT("InfpFindOrAddSection section %S\n", Section);

  *Context = MALLOC(sizeof(INFCONTEXT));
  if (((void*)0) == *Context)
    {
      DPRINT1("MALLOC() failed\n");
      return INF_STATUS_NO_MEMORY;
    }

  (*Context)->Inf = Cache;
  (*Context)->Line = 0;
  CacheSection = InfpFindSection(Cache, Section);
  if (((void*)0) == CacheSection)
    {
      DPRINT("Section not found, creating it\n");
      CacheSection = InfpAddSection(Cache, Section);
      if (((void*)0) == CacheSection)
        {
          DPRINT("Failed to create section\n");
          FREE(*Context);
          return INF_STATUS_NO_MEMORY;
        }
    }

  (*Context)->Section = CacheSection->Id;
  return INF_STATUS_SUCCESS;
}
