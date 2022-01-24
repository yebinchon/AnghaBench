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
struct TYPE_3__ {int /*<<< orphan*/  attrs; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ var_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_RP ; 
 int /*<<< orphan*/  TDT_IGNORE_STRINGS ; 
#define  TGT_ARRAY 130 
#define  TGT_CTXT_HANDLE_POINTER 129 
#define  TGT_POINTER 128 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const var_t *v)
{
    switch (FUNC2(v->type, v->attrs, TDT_IGNORE_STRINGS))
    {
    case TGT_ARRAY:
        if (!FUNC1( v->type )) return 0;
        /* fall through */
    case TGT_POINTER:
        return (FUNC0(v->type, v->attrs, TRUE) == FC_RP);
    case TGT_CTXT_HANDLE_POINTER:
        return TRUE;
    default:
        return 0;
    }

}