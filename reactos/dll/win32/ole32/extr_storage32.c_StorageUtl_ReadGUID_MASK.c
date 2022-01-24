#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  Data4; int /*<<< orphan*/  Data3; int /*<<< orphan*/  Data2; int /*<<< orphan*/  Data1; } ;
typedef  TYPE_1__ GUID ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

void FUNC3(const BYTE* buffer, ULONG offset, GUID* value)
{
  FUNC0(buffer, offset,   &(value->Data1));
  FUNC1(buffer,  offset+4, &(value->Data2));
  FUNC1(buffer,  offset+6, &(value->Data3));

  FUNC2(value->Data4, buffer+offset+8, sizeof(value->Data4));
}