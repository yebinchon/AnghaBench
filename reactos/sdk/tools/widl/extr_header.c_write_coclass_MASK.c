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
struct TYPE_4__ {char* name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  UUID ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_UUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC5(FILE *header, type_t *cocl)
{
  const UUID *uuid = FUNC1(cocl->attrs, ATTR_UUID);

  FUNC0(header, "/*****************************************************************************\n");
  FUNC0(header, " * %s coclass\n", cocl->name);
  FUNC0(header, " */\n\n");
  if (uuid)
      FUNC3(header, "CLSID", cocl->name, uuid);
  FUNC0(header, "\n#ifdef __cplusplus\n");
  if (uuid)
  {
      FUNC0(header, "class DECLSPEC_UUID(\"%s\") %s;\n", FUNC2(uuid), cocl->name);
      FUNC4(header, cocl, uuid);
  }
  else
  {
      FUNC0(header, "class %s;\n", cocl->name);
  }
  FUNC0(header, "#endif\n");
  FUNC0(header, "\n");
}