#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * Buffer; scalar_t__ MaximumLength; scalar_t__ Length; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  IID_Endianness ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  szGuid ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
  UNICODE_STRING str;
  NTSTATUS ret;

  if (!&pRtlStringFromGUID)
  {
      FUNC4("RtlStringFromGUID is not available\n");
      return;
  }

  str.Length = str.MaximumLength = 0;
  str.Buffer = NULL;

  ret = FUNC3(&IID_Endianness, &str);
  FUNC1(ret == 0, "expected ret=0, got 0x%0x\n", ret);
  FUNC1(str.Buffer && !FUNC0(str.Buffer, szGuid), "Endianness broken\n");
  FUNC2(&str);
}