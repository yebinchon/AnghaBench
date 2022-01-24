#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ USHORT ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ ISAPNP_TAG_END ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
BOOLEAN
FUNC6(PUCHAR ReadDataPort, USHORT WantedTag, PVOID Buffer, ULONG Length)
{
  USHORT Tag, TagLen;

  do
  {
    Tag = FUNC5(ReadDataPort);
    if (FUNC0(Tag))
    {
      TagLen = FUNC2(Tag);
      Tag = FUNC3(Tag);
    }
    else
    {
      TagLen = FUNC5(ReadDataPort) + (FUNC5(ReadDataPort) << 8);
      Tag = FUNC1(Tag);
    }

    if (Tag == WantedTag)
    {
      if (Length > TagLen)
          Length = TagLen;

      FUNC4(ReadDataPort, Buffer, Length);

      return TRUE;
    }
    else
    {
      FUNC4(ReadDataPort, NULL, Length);
    }
  } while (Tag != ISAPNP_TAG_END);

  return FALSE;
}