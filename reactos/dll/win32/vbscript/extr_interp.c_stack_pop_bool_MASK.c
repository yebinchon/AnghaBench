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
struct TYPE_4__ {int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ variant_val_t ;
typedef  int /*<<< orphan*/  exec_ctx_t ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int E_NOTIMPL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int S_OK ; 
#define  VT_BOOL 131 
#define  VT_I2 130 
#define  VT_I4 129 
#define  VT_NULL 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(exec_ctx_t *ctx, BOOL *b)
{
    variant_val_t val;
    HRESULT hres;

    hres = FUNC8(ctx, &val);
    if(FUNC0(hres))
        return hres;

    switch (FUNC5(val.v))
    {
    case VT_BOOL:
        *b = FUNC2(val.v);
        break;
    case VT_NULL:
        *b = FALSE;
        break;
    case VT_I2:
        *b = FUNC3(val.v);
        break;
    case VT_I4:
        *b = FUNC4(val.v);
        break;
    default:
        FUNC1("unsupported for %s\n", FUNC6(val.v));
        FUNC7(&val);
        return E_NOTIMPL;
    }
    return S_OK;
}