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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ DWORD_PTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned char* FUNC4(ULONG *pFlags, unsigned char *Buffer,
                                                REFIID riid, IUnknown *punk)
{
  FUNC1("pFlags=%d, Buffer=%p, pUnk=%p\n", *pFlags, Buffer, punk);

  /* first DWORD is used to store pointer itself, truncated on win64 */
  if(!punk)
  {
      FUNC3(Buffer, 0, sizeof(ULONG));
      return Buffer + sizeof(ULONG);
  }
  else
  {
      *(DWORD*)Buffer = (DWORD_PTR)punk;
      Buffer += sizeof(DWORD);
  }

  return FUNC2(pFlags, FUNC0(*pFlags), Buffer, punk, riid);
}