#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  namespace; } ;
typedef  TYPE_1__ type_t ;
struct TYPE_6__ {int Data1; int Data2; int Data3; int* Data4; } ;
typedef  TYPE_2__ UUID ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(FILE *f, type_t *type, const UUID *uuid)
{
  char *name = FUNC0(type->namespace, "", "::", type->name);
  FUNC1(f, "#ifdef __CRT_UUID_DECL\n");
  FUNC1(f, "__CRT_UUID_DECL(%s, 0x%08x, 0x%04x, 0x%04x, 0x%02x,0x%02x, 0x%02x,"
        "0x%02x,0x%02x,0x%02x,0x%02x,0x%02x)\n",
        name, uuid->Data1, uuid->Data2, uuid->Data3, uuid->Data4[0], uuid->Data4[1],
        uuid->Data4[2], uuid->Data4[3], uuid->Data4[4], uuid->Data4[5], uuid->Data4[6],
        uuid->Data4[7]);
  FUNC1(f, "#endif\n");
  FUNC2(name);
}