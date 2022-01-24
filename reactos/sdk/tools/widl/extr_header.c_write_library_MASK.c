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
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ typelib_t ;
typedef  int /*<<< orphan*/  UUID ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_UUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC3(FILE *header, const typelib_t *typelib)
{
  const UUID *uuid = FUNC1(typelib->attrs, ATTR_UUID);
  FUNC0(header, "\n");
  FUNC2(header, "LIBID", typelib->name, uuid);
  FUNC0(header, "\n");
}