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
struct re_object {int /*<<< orphan*/  obj; } ;
typedef  int /*<<< orphan*/  REOBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REO_GETOBJ_ALL_INTERFACES ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct re_object* FUNC2 (int) ; 

__attribute__((used)) static struct re_object* FUNC3(const REOBJECT *reo)
{
  struct re_object *reobj = FUNC2(sizeof(*reobj));

  if (!reobj)
  {
    FUNC1("Fail to allocate re_object.\n");
    return NULL;
  }
  FUNC0(&reobj->obj, reo, REO_GETOBJ_ALL_INTERFACES);
  return reobj;
}