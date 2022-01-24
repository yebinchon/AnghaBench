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
struct TYPE_4__ {char* name; int stgclass; int /*<<< orphan*/  type; scalar_t__ eval; } ;
typedef  TYPE_1__ var_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  STG_EXTERN 131 
#define  STG_NONE 130 
#define  STG_REGISTER 129 
#define  STG_STATIC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(FILE *header, const var_t *v)
{
  if (FUNC1(v) && v->eval)
  {
    FUNC0(header, "#define %s (", v->name);
    FUNC2(header, v->eval, 0, 1, NULL, NULL, "");
    FUNC0(header, ")\n\n");
  }
  else
  {
    switch (v->stgclass)
    {
      case STG_NONE:
      case STG_REGISTER: /* ignored */
        break;
      case STG_STATIC:
        FUNC0(header, "static ");
        break;
      case STG_EXTERN:
        FUNC0(header, "extern ");
        break;
    }
    FUNC3(header, v->type, FALSE, v->name);
    FUNC0(header, ";\n\n");
  }
}