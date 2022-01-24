#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  Id; } ;
struct TYPE_8__ {int /*<<< orphan*/  Section; scalar_t__ Line; int /*<<< orphan*/  Inf; } ;
typedef  TYPE_1__* PINFCONTEXT ;
typedef  TYPE_2__* PINFCACHESECTION ;
typedef  int /*<<< orphan*/  PINFCACHE ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  INFSTATUS ;
typedef  int /*<<< orphan*/  INFCONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  INF_STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  INF_STATUS_SUCCESS ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 

INFSTATUS
FUNC6(PINFCACHE Cache,
                     PCWSTR Section,
                     PINFCONTEXT *Context)
{
  PINFCACHESECTION CacheSection;
  FUNC0("InfpFindOrAddSection section %S\n", Section);

  *Context = FUNC5(sizeof(INFCONTEXT));
  if (NULL == *Context)
    {
      FUNC1("MALLOC() failed\n");
      return INF_STATUS_NO_MEMORY;
    }

  (*Context)->Inf = Cache;
  (*Context)->Line = 0;
  CacheSection = FUNC4(Cache, Section);
  if (NULL == CacheSection)
    {
      FUNC0("Section not found, creating it\n");
      CacheSection = FUNC3(Cache, Section);
      if (NULL == CacheSection)
        {
          FUNC0("Failed to create section\n");
          FUNC2(*Context);
          return INF_STATUS_NO_MEMORY;
        }
    }

  (*Context)->Section = CacheSection->Id;
  return INF_STATUS_SUCCESS;
}