#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  var_list_t ;
struct TYPE_13__ {int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CALLCONV ; 
 int /*<<< orphan*/  ATTR_INLINE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NAME_DEFAULT ; 
 scalar_t__ TYPE_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ is_object_interface ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC13(FILE *h, type_t *t, int is_field, int declonly, const char *name)
{
  type_t *pt = NULL;
  int ptr_level = 0;

  if (!h) return;

  if (t) {
    for (pt = t; FUNC4(pt); pt = FUNC9(pt), ptr_level++)
      ;

    if (FUNC8(pt) == TYPE_FUNCTION) {
      int i;
      const char *callconv = FUNC2(pt->attrs, ATTR_CALLCONV);
      if (!callconv && is_object_interface) callconv = "STDMETHODCALLTYPE";
      if (FUNC3(pt->attrs, ATTR_INLINE)) FUNC0(h, "inline ");
      FUNC11(h, FUNC7(pt), NAME_DEFAULT, declonly);
      FUNC1(' ', h);
      if (ptr_level) FUNC1('(', h);
      if (callconv) FUNC0(h, "%s ", callconv);
      for (i = 0; i < ptr_level; i++)
        FUNC1('*', h);
    } else
      FUNC11(h, t, NAME_DEFAULT, declonly);
  }

  if (name) FUNC0(h, "%s%s", !t || FUNC5(t) ? " " : "", name );

  if (t) {
    if (FUNC8(pt) == TYPE_FUNCTION) {
      const var_list_t *args = FUNC6(pt);

      if (ptr_level) FUNC1(')', h);
      FUNC1('(', h);
      if (args)
          FUNC10(h, args, NULL, 0, FALSE);
      else
          FUNC0(h, "void");
      FUNC1(')', h);
    } else
      FUNC12(h, t, is_field);
  }
}