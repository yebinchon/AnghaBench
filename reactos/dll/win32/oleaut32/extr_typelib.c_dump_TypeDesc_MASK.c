#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int hreftype; TYPE_1__* lpadesc; TYPE_3__* lptdesc; } ;
struct TYPE_7__ {int vt; TYPE_2__ u; } ;
struct TYPE_5__ {int cDims; TYPE_3__ tdescElem; } ;
typedef  TYPE_3__ TYPEDESC ;

/* Variables and functions */
 int VT_ARRAY ; 
#define  VT_BOOL 153 
#define  VT_BSTR 152 
 int VT_BYREF ; 
#define  VT_CARRAY 151 
#define  VT_CY 150 
#define  VT_DATE 149 
#define  VT_DISPATCH 148 
#define  VT_ERROR 147 
#define  VT_HRESULT 146 
#define  VT_I1 145 
#define  VT_I2 144 
#define  VT_I4 143 
#define  VT_INT 142 
#define  VT_LPSTR 141 
#define  VT_LPWSTR 140 
#define  VT_PTR 139 
#define  VT_R4 138 
#define  VT_R8 137 
 int VT_RESERVED ; 
#define  VT_SAFEARRAY 136 
 int VT_TYPEMASK ; 
#define  VT_UI1 135 
#define  VT_UI2 134 
#define  VT_UI4 133 
#define  VT_UINT 132 
#define  VT_UNKNOWN 131 
#define  VT_USERDEFINED 130 
#define  VT_VARIANT 129 
 int VT_VECTOR ; 
#define  VT_VOID 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 char* FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(const TYPEDESC *pTD,char *szVarType) {
    if (pTD->vt & VT_RESERVED)
	szVarType += FUNC2(FUNC1(szVarType, "reserved | "));
    if (pTD->vt & VT_BYREF)
	szVarType += FUNC2(FUNC1(szVarType, "ref to "));
    if (pTD->vt & VT_ARRAY)
	szVarType += FUNC2(FUNC1(szVarType, "array of "));
    if (pTD->vt & VT_VECTOR)
	szVarType += FUNC2(FUNC1(szVarType, "vector of "));
    switch(pTD->vt & VT_TYPEMASK) {
    case VT_UI1: FUNC0(szVarType, "VT_UI1"); break;
    case VT_I2: FUNC0(szVarType, "VT_I2"); break;
    case VT_I4: FUNC0(szVarType, "VT_I4"); break;
    case VT_R4: FUNC0(szVarType, "VT_R4"); break;
    case VT_R8: FUNC0(szVarType, "VT_R8"); break;
    case VT_BOOL: FUNC0(szVarType, "VT_BOOL"); break;
    case VT_ERROR: FUNC0(szVarType, "VT_ERROR"); break;
    case VT_CY: FUNC0(szVarType, "VT_CY"); break;
    case VT_DATE: FUNC0(szVarType, "VT_DATE"); break;
    case VT_BSTR: FUNC0(szVarType, "VT_BSTR"); break;
    case VT_UNKNOWN: FUNC0(szVarType, "VT_UNKNOWN"); break;
    case VT_DISPATCH: FUNC0(szVarType, "VT_DISPATCH"); break;
    case VT_I1: FUNC0(szVarType, "VT_I1"); break;
    case VT_UI2: FUNC0(szVarType, "VT_UI2"); break;
    case VT_UI4: FUNC0(szVarType, "VT_UI4"); break;
    case VT_INT: FUNC0(szVarType, "VT_INT"); break;
    case VT_UINT: FUNC0(szVarType, "VT_UINT"); break;
    case VT_VARIANT: FUNC0(szVarType, "VT_VARIANT"); break;
    case VT_VOID: FUNC0(szVarType, "VT_VOID"); break;
    case VT_HRESULT: FUNC0(szVarType, "VT_HRESULT"); break;
    case VT_USERDEFINED: FUNC0(szVarType, "VT_USERDEFINED ref = %x",
				 pTD->u.hreftype); break;
    case VT_LPSTR: FUNC0(szVarType, "VT_LPSTR"); break;
    case VT_LPWSTR: FUNC0(szVarType, "VT_LPWSTR"); break;
    case VT_PTR: FUNC0(szVarType, "ptr to ");
      FUNC3(pTD->u.lptdesc, szVarType + 7);
      break;
    case VT_SAFEARRAY: FUNC0(szVarType, "safearray of ");
      FUNC3(pTD->u.lptdesc, szVarType + 13);
      break;
    case VT_CARRAY: FUNC0(szVarType, "%d dim array of ",
			    pTD->u.lpadesc->cDims); /* FIXME print out sizes */
      FUNC3(&pTD->u.lpadesc->tdescElem, szVarType + FUNC2(szVarType));
      break;

    default: FUNC0(szVarType, "unknown(%d)", pTD->vt & VT_TYPEMASK); break;
    }
}