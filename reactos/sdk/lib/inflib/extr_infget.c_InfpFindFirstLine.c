
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int Id; } ;
struct TYPE_10__ {int Id; TYPE_3__* FirstLine; } ;
struct TYPE_9__ {int Line; int Section; scalar_t__ Inf; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHESECTION ;
typedef TYPE_3__* PINFCACHELINE ;
typedef int * PINFCACHE ;
typedef int * PCWSTR ;
typedef int INFSTATUS ;
typedef int INFCONTEXT ;


 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 int INF_STATUS_INVALID_PARAMETER ;
 int INF_STATUS_NOT_FOUND ;
 int INF_STATUS_NO_MEMORY ;
 int INF_STATUS_SUCCESS ;
 TYPE_3__* InfpFindKeyLine (TYPE_2__*,int *) ;
 TYPE_2__* InfpFindSection (int *,int *) ;
 TYPE_1__* MALLOC (int) ;

INFSTATUS
InfpFindFirstLine(PINFCACHE Cache,
                  PCWSTR Section,
                  PCWSTR Key,
                  PINFCONTEXT *Context)
{
  PINFCACHESECTION CacheSection;
  PINFCACHELINE CacheLine;

  if (Cache == ((void*)0) || Section == ((void*)0) || Context == ((void*)0))
    {
      DPRINT1("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

  CacheSection = InfpFindSection(Cache, Section);
  if (((void*)0) == CacheSection)
    {
      DPRINT("Section not found\n");
      return INF_STATUS_NOT_FOUND;
    }

  if (Key != ((void*)0))
    {
      CacheLine = InfpFindKeyLine(CacheSection, Key);
    }
  else
    {
      CacheLine = CacheSection->FirstLine;
    }

  if (((void*)0) == CacheLine)
    {
      DPRINT("Key not found\n");
      return INF_STATUS_NOT_FOUND;
    }

  *Context = MALLOC(sizeof(INFCONTEXT));
  if (((void*)0) == *Context)
    {
      DPRINT1("MALLOC() failed\n");
      return INF_STATUS_NO_MEMORY;
    }
  (*Context)->Inf = (PVOID)Cache;
  (*Context)->Section = CacheSection->Id;
  (*Context)->Line = CacheLine->Id;

  return INF_STATUS_SUCCESS;
}
