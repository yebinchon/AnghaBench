#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_8__ {int /*<<< orphan*/  dwModuleBase; int /*<<< orphan*/  hProcess; } ;
typedef  TYPE_1__* PENUMINFO ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD64 ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
#define  SymTagArrayType 133 
#define  SymTagBaseType 132 
#define  SymTagEnum 131 
#define  SymTagFunctionType 130 
#define  SymTagPointerType 129 
#define  SymTagUDT 128 
 int /*<<< orphan*/  TI_GET_SYMTAG ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

VOID
FUNC7(DWORD dwTypeIndex, PENUMINFO pei, INT indent, BOOL bMembers)
{
	HANDLE hProcess = pei->hProcess;
	DWORD64 dwModuleBase = pei->dwModuleBase;
	DWORD dwTag = 0;

	FUNC5(hProcess, dwModuleBase, dwTypeIndex, TI_GET_SYMTAG, &dwTag);

	switch (dwTag)
	{
	case SymTagEnum:
		FUNC2(dwTypeIndex, pei, indent, bMembers);
		break;

	case SymTagUDT:
		FUNC4(dwTypeIndex, pei, indent, bMembers);
		break;

	case SymTagPointerType:
		FUNC3(dwTypeIndex, pei, indent);
		break;

	case SymTagBaseType:
		FUNC1(dwTypeIndex, pei, indent);
		break;

	case SymTagArrayType:
		FUNC0(dwTypeIndex, pei, indent);
		break;

	case SymTagFunctionType:
		FUNC6("function");
		break;

	default:
		FUNC6("typeTag%ld", dwTag);
		break;
	}

}