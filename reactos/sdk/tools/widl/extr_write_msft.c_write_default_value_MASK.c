#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type_t ;
typedef  int /*<<< orphan*/  msft_typelib_t ;
struct TYPE_4__ {int /*<<< orphan*/  sval; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  cval; TYPE_1__ u; } ;
typedef  TYPE_2__ expr_t ;

/* Variables and functions */
 scalar_t__ EXPR_STRLIT ; 
 scalar_t__ EXPR_WSTRLIT ; 
 scalar_t__ TYPE_ENUM ; 
#define  VT_BOOL 138 
 int VT_BSTR ; 
#define  VT_HRESULT 137 
#define  VT_I1 136 
#define  VT_I2 135 
#define  VT_I4 134 
#define  VT_INT 133 
#define  VT_R4 132 
#define  VT_UI1 131 
#define  VT_UI2 130 
#define  VT_UI4 129 
#define  VT_UINT 128 
 int VT_USERDEFINED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(msft_typelib_t *typelib, type_t *type, expr_t *expr, int *out)
{
    int vt;

    if (expr->type == EXPR_STRLIT || expr->type == EXPR_WSTRLIT) {
        if (FUNC2(type) != VT_BSTR)
            FUNC1("string default value applied to non-string type\n");
        FUNC0("default value '%s'\n", expr->u.sval);
        FUNC8(typelib, out, expr->u.sval);
        return;
    }

    if (FUNC4(type) == TYPE_ENUM) {
        vt = VT_I4;
    } else if (FUNC3(type)) {
        vt = FUNC2(FUNC5(type));
        if (vt == VT_USERDEFINED)
            vt = VT_I4;
        if (expr->cval)
            FUNC6("non-null pointer default value\n");
    } else {
        vt = FUNC2(type);
        switch(vt) {
        case VT_I2:
        case VT_I4:
        case VT_R4:
        case VT_BOOL:
        case VT_I1:
        case VT_UI1:
        case VT_UI2:
        case VT_UI4:
        case VT_INT:
        case VT_UINT:
        case VT_HRESULT:
            break;
        default:
            FUNC6("can't write value of type %d yet\n", vt);
            return;
        }
    }

    FUNC7(typelib, out, vt, expr->cval);
}