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
struct TYPE_3__ {float int_result; float str_result; scalar_t__ bool_result; scalar_t__ double_result; scalar_t__ test_double; } ;
typedef  TYPE_1__ conv_results_t ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  scalar_t__ UINT16 ;
typedef  int /*<<< orphan*/  IVariantChangeType ;
typedef  float INT16 ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ VT_BOOL ; 
 scalar_t__ VT_BSTR ; 
 scalar_t__ VT_EMPTY ; 
 scalar_t__ VT_I2 ; 
 scalar_t__ VT_I4 ; 
 scalar_t__ VT_NULL ; 
 scalar_t__ VT_R4 ; 
 scalar_t__ VT_R8 ; 
 scalar_t__ VT_UI2 ; 
 float FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 float FUNC2 (int /*<<< orphan*/ *) ; 
 float FUNC3 (int /*<<< orphan*/ *) ; 
 float FUNC4 (int /*<<< orphan*/ *) ; 
 float FUNC5 (int /*<<< orphan*/ *) ; 
 float FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,float,float) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,float) ; 
 float FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(IVariantChangeType *change_type, VARIANT *src, const conv_results_t *ex)
{
    VARIANT v;

    FUNC9(change_type, &v, src, VT_I4);
    FUNC11(FUNC3(&v) == ex->int_result, "V_I4(v) = %d, expected %d\n", FUNC3(&v), ex->int_result);

    FUNC9(change_type, &v, src, VT_UI2);
    FUNC11(FUNC6(&v) == (UINT16)ex->int_result, "V_UI2(v) = %u, expected %u\n", FUNC6(&v), (UINT16)ex->int_result);

    FUNC9(change_type, &v, src, VT_BSTR);
    FUNC11(!FUNC12(FUNC1(&v), ex->str_result), "V_BSTR(v) = %s, expected %s\n", FUNC13(FUNC1(&v)), ex->str_result);
    FUNC8(&v);

    FUNC9(change_type, &v, src, VT_BOOL);
    FUNC11(FUNC0(&v) == ex->bool_result, "V_BOOL(v) = %x, expected %x\n", FUNC0(&v), ex->bool_result);

    if(ex->test_double) {
        FUNC9(change_type, &v, src, VT_R8);
        FUNC11(FUNC5(&v) == ex->double_result, "V_R8(v) = %lf, expected %lf\n", FUNC5(&v), ex->double_result);

        FUNC9(change_type, &v, src, VT_R4);
        FUNC11(FUNC4(&v) == (float)ex->double_result, "V_R4(v) = %f, expected %f\n", FUNC4(&v), (float)ex->double_result);
    }

    if(FUNC7(src) == VT_NULL)
        FUNC9(change_type, &v, src, VT_NULL);
    else
        FUNC10(change_type, src, VT_NULL, E_NOTIMPL);

    if(FUNC7(src) == VT_EMPTY)
        FUNC9(change_type, &v, src, VT_EMPTY);
    else
        FUNC10(change_type, src, VT_EMPTY, E_NOTIMPL);

    FUNC9(change_type, &v, src, VT_I2);
    FUNC11(FUNC2(&v) == (INT16)ex->int_result, "V_I2(v) = %d, expected %d\n", FUNC2(&v), ex->int_result);
}