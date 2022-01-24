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
typedef  int /*<<< orphan*/  var_t ;
struct TYPE_4__ {char* name; } ;
typedef  TYPE_1__ type_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,...) ; 

__attribute__((used)) static char *FUNC3(const type_t *iface, const var_t *func)
{
  static char buff[255];
  if (FUNC1(iface, func))
    FUNC2(buff, "%s_%s", iface->name, FUNC0(func));
  else
    FUNC2(buff, "%s", FUNC0(func));
  return buff;
}