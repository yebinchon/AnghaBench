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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int UINT ;
struct TYPE_2__ {int Hi; int /*<<< orphan*/  Lo; } ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  VT_CY 141 
#define  VT_DATE 140 
#define  VT_I1 139 
#define  VT_I2 138 
#define  VT_I4 137 
#define  VT_I8 136 
#define  VT_INT 135 
#define  VT_R4 134 
#define  VT_R8 133 
#define  VT_UI1 132 
#define  VT_UI2 131 
#define  VT_UI4 130 
#define  VT_UI8 129 
#define  VT_UINT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 double FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 double FUNC9 (int /*<<< orphan*/  const*) ; 
 double FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 
 int FUNC13 (int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/  const*) ; 
 int FUNC15 (int /*<<< orphan*/  const*) ; 
 int FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*,double,...) ; 
 char const* FUNC18 (int) ; 
 char const** vtstr_buffer ; 
 size_t vtstr_current ; 

__attribute__((used)) static const char *FUNC19( const VARIANT *var )
{
    vtstr_current %= FUNC0(vtstr_buffer);
    switch(FUNC16(var))
    {
    case VT_I1:
        FUNC17( vtstr_buffer[vtstr_current], "VT_I1(%d)", FUNC4(var) ); break;
    case VT_I2:
        FUNC17( vtstr_buffer[vtstr_current], "VT_I2(%d)", FUNC5(var) ); break;
    case VT_I4:
        FUNC17( vtstr_buffer[vtstr_current], "VT_I4(%d)", FUNC6(var) ); break;
    case VT_INT:
        FUNC17( vtstr_buffer[vtstr_current], "VT_INT(%d)", FUNC8(var) ); break;
    case VT_I8:
        FUNC17( vtstr_buffer[vtstr_current], "VT_I8(%x%08x)", (UINT)(FUNC7(var) >> 32), (UINT)FUNC7(var) ); break;
    case VT_UI8:
        FUNC17( vtstr_buffer[vtstr_current], "VT_UI8(%x%08x)", (UINT)(FUNC14(var) >> 32), (UINT)FUNC14(var) ); break;
    case VT_R4:
        FUNC17( vtstr_buffer[vtstr_current], "VT_R4(%g)", FUNC9(var) ); break;
    case VT_R8:
        FUNC17( vtstr_buffer[vtstr_current], "VT_R8(%g)", FUNC10(var) ); break;
    case VT_UI1:
        FUNC17( vtstr_buffer[vtstr_current], "VT_UI1(%u)", FUNC11(var) ); break;
    case VT_UI2:
        FUNC17( vtstr_buffer[vtstr_current], "VT_UI2(%u)", FUNC12(var) ); break;
    case VT_UI4:
        FUNC17( vtstr_buffer[vtstr_current], "VT_UI4(%u)", FUNC13(var) ); break;
    case VT_UINT:
        FUNC17( vtstr_buffer[vtstr_current], "VT_UINT(%d)", FUNC15(var) ); break;
    case VT_CY:
        FUNC17( vtstr_buffer[vtstr_current], "VT_CY(%x%08x)", FUNC1(FUNC2(var)).Hi, FUNC1(FUNC2(var)).Lo ); break;
    case VT_DATE:
        FUNC17( vtstr_buffer[vtstr_current], "VT_DATE(%g)", FUNC3(var) ); break;
    default:
        return FUNC18(FUNC16(var));
    }
    return vtstr_buffer[vtstr_current++];
}