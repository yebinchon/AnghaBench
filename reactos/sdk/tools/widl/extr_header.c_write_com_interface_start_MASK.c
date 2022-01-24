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
struct TYPE_3__ {char* name; char* c_name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_DISPINTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(FILE *header, const type_t *iface)
{
  int dispinterface = FUNC1(iface->attrs, ATTR_DISPINTERFACE);
  FUNC0(header, "/*****************************************************************************\n");
  FUNC0(header, " * %s %sinterface\n", iface->name, dispinterface ? "disp" : "");
  FUNC0(header, " */\n");
  FUNC0(header,"#ifndef __%s_%sINTERFACE_DEFINED__\n", iface->c_name, dispinterface ? "DISP" : "");
  FUNC0(header,"#define __%s_%sINTERFACE_DEFINED__\n\n", iface->c_name, dispinterface ? "DISP" : "");
}