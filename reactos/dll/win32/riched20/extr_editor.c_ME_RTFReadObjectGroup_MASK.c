#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ rtfClass; scalar_t__ rtfMajor; int /*<<< orphan*/  rtfMinor; } ;
typedef  TYPE_1__ RTF_Info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ rtfBeginGroup ; 
 scalar_t__ rtfControl ; 
 int /*<<< orphan*/  rtfDestination ; 
 scalar_t__ rtfEOF ; 
 scalar_t__ rtfEndGroup ; 
 scalar_t__ rtfGroup ; 
 scalar_t__ rtfObjAttr ; 
 int /*<<< orphan*/  rtfObjResult ; 

__attribute__((used)) static void FUNC6(RTF_Info *info)
{
  for (;;)
  {
    FUNC3 (info);
    if (info->rtfClass == rtfEOF)
      return;
    if (FUNC1(info, rtfGroup, rtfEndGroup))
      break;
    if (FUNC1(info, rtfGroup, rtfBeginGroup))
    {
      FUNC3 (info);
      if (info->rtfClass == rtfEOF)
        return;
      if (FUNC2(info, rtfControl, rtfDestination, rtfObjResult))
      {
	int	level = 1;

	while (FUNC3 (info) != rtfEOF)
	{
          if (info->rtfClass == rtfGroup)
          {
            if (info->rtfMajor == rtfBeginGroup) level++;
            else if (info->rtfMajor == rtfEndGroup && --level < 0) break;
          }
          FUNC4(info);
	}
      }
      else FUNC5(info);
      continue;
    }
    if (!FUNC1 (info, rtfControl, rtfObjAttr))
    {
      FUNC0("Non supported attribute: %d %d %d\n", info->rtfClass, info->rtfMajor, info->rtfMinor);
      return;
    }
  }
  FUNC4(info);	/* feed "}" back to router */
}