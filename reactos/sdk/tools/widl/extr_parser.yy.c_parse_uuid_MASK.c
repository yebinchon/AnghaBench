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
struct TYPE_4__ {void** Data4; void* Data3; void* Data2; void* Data1; } ;
typedef  TYPE_1__ UUID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 void* FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int) ; 

UUID *FUNC3(const char *u)
{
  UUID* uuid = FUNC2(sizeof(UUID));
  char b[3];
  /* it would be nice to use UuidFromStringA */
  uuid->Data1 = FUNC1(u, NULL, 16);
  uuid->Data2 = FUNC1(u+9, NULL, 16);
  uuid->Data3 = FUNC1(u+14, NULL, 16);
  b[2] = 0;
  FUNC0(b, u+19, 2); uuid->Data4[0] = FUNC1(b, NULL, 16);
  FUNC0(b, u+21, 2); uuid->Data4[1] = FUNC1(b, NULL, 16);
  FUNC0(b, u+24, 2); uuid->Data4[2] = FUNC1(b, NULL, 16);
  FUNC0(b, u+26, 2); uuid->Data4[3] = FUNC1(b, NULL, 16);
  FUNC0(b, u+28, 2); uuid->Data4[4] = FUNC1(b, NULL, 16);
  FUNC0(b, u+30, 2); uuid->Data4[5] = FUNC1(b, NULL, 16);
  FUNC0(b, u+32, 2); uuid->Data4[6] = FUNC1(b, NULL, 16);
  FUNC0(b, u+34, 2); uuid->Data4[7] = FUNC1(b, NULL, 16);
  return uuid;
}