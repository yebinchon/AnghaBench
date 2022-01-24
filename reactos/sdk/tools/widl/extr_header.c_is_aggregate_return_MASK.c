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
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ var_t ;
typedef  enum type_type { ____Placeholder_type_type } type_type ;

/* Variables and functions */
 int TYPE_COCLASS ; 
 int TYPE_INTERFACE ; 
 int TYPE_STRUCT ; 
 int TYPE_UNION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const var_t *func)
{
  enum type_type type = FUNC1(FUNC0(func->type));
  return type == TYPE_STRUCT || type == TYPE_UNION ||
         type == TYPE_COCLASS || type == TYPE_INTERFACE;
}