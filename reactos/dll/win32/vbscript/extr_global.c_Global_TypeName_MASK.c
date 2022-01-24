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
typedef  int /*<<< orphan*/  vbdisp_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
#define  VT_BOOL 139 
#define  VT_BSTR 138 
#define  VT_CY 137 
#define  VT_DATE 136 
#define  VT_DECIMAL 135 
#define  VT_EMPTY 134 
#define  VT_I2 133 
#define  VT_I4 132 
#define  VT_NULL 131 
#define  VT_R4 130 
#define  VT_R8 129 
#define  VT_UI1 128 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static HRESULT FUNC6(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    static const WCHAR ByteW[]     = {'B', 'y', 't', 'e', 0};
    static const WCHAR IntegerW[]  = {'I', 'n', 't', 'e', 'g', 'e', 'r', 0};
    static const WCHAR LongW[]     = {'L', 'o', 'n', 'g', 0};
    static const WCHAR SingleW[]   = {'S', 'i', 'n', 'g', 'l', 'e', 0};
    static const WCHAR DoubleW[]   = {'D', 'o', 'u', 'b', 'l', 'e', 0};
    static const WCHAR CurrencyW[] = {'C', 'u', 'r', 'r', 'e', 'n', 'c', 'y', 0};
    static const WCHAR DecimalW[]  = {'D', 'e', 'c', 'i', 'm', 'a', 'l', 0};
    static const WCHAR DateW[]     = {'D', 'a', 't', 'e', 0};
    static const WCHAR StringW[]   = {'S', 't', 'r', 'i', 'n', 'g', 0};
    static const WCHAR BooleanW[]  = {'B', 'o', 'o', 'l', 'e', 'a', 'n', 0};
    static const WCHAR EmptyW[]    = {'E', 'm', 'p', 't', 'y', 0};
    static const WCHAR NullW[]     = {'N', 'u', 'l', 'l', 0};

    FUNC1("(%s)\n", FUNC4(arg));

    FUNC3(args_cnt == 1);

    switch(FUNC2(arg)) {
        case VT_UI1:
            return FUNC5(res, ByteW);
        case VT_I2:
            return FUNC5(res, IntegerW);
        case VT_I4:
            return FUNC5(res, LongW);
        case VT_R4:
            return FUNC5(res, SingleW);
        case VT_R8:
            return FUNC5(res, DoubleW);
        case VT_CY:
            return FUNC5(res, CurrencyW);
        case VT_DECIMAL:
            return FUNC5(res, DecimalW);
        case VT_DATE:
            return FUNC5(res, DateW);
        case VT_BSTR:
            return FUNC5(res, StringW);
        case VT_BOOL:
            return FUNC5(res, BooleanW);
        case VT_EMPTY:
            return FUNC5(res, EmptyW);
        case VT_NULL:
            return FUNC5(res, NullW);
        default:
            FUNC0("arg %s not supported\n", FUNC4(arg));
            return E_NOTIMPL;
        }
}