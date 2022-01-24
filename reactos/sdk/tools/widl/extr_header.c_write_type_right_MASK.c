#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type_t ;
struct TYPE_2__ {int cval; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FALSE ; 
#define  TYPE_ALIAS 141 
#define  TYPE_ARRAY 140 
#define  TYPE_BASIC 139 
#define  TYPE_BITFIELD 138 
#define  TYPE_COCLASS 137 
#define  TYPE_ENCAPSULATED_UNION 136 
#define  TYPE_ENUM 135 
#define  TYPE_FUNCTION 134 
#define  TYPE_INTERFACE 133 
#define  TYPE_MODULE 132 
#define  TYPE_POINTER 131 
#define  TYPE_STRUCT 130 
#define  TYPE_UNION 129 
#define  TYPE_VOID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(FILE *h, type_t *t, int is_field)
{
  if (!h) return;
  if (FUNC8(t)) return;

  switch (FUNC7(t))
  {
  case TYPE_ARRAY:
  {
    type_t *elem = FUNC4(t);
    if (FUNC5(t))
    {
      if (!FUNC8(elem) && FUNC1(elem) && !FUNC5(elem))
        FUNC0(h, ")");
    }
    else
    {
      if (FUNC2(t))
        FUNC0(h, "[%s]", is_field ? "1" : "");
      else
        FUNC0(h, "[%u]", FUNC3(t));
    }
    FUNC10(h, elem, FALSE);
    break;
  }
  case TYPE_POINTER:
  {
    type_t *ref = FUNC9(t);
    if (!FUNC8(ref) && FUNC1(ref) && !FUNC5(ref))
      FUNC0(h, ")");
    FUNC10(h, ref, FALSE);
    break;
  }
  case TYPE_BITFIELD:
    FUNC0(h, " : %u", FUNC6(t)->cval);
    break;
  case TYPE_VOID:
  case TYPE_BASIC:
  case TYPE_ENUM:
  case TYPE_STRUCT:
  case TYPE_ENCAPSULATED_UNION:
  case TYPE_UNION:
  case TYPE_ALIAS:
  case TYPE_MODULE:
  case TYPE_COCLASS:
  case TYPE_FUNCTION:
  case TYPE_INTERFACE:
    break;
  }
}