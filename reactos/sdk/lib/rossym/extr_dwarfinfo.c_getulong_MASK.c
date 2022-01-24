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
typedef  int /*<<< orphan*/  uvlong ;
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  DwarfBuf ;

/* Variables and functions */
#define  FormAddr 140 
#define  FormData1 139 
#define  FormData2 138 
#define  FormData4 137 
#define  FormData8 136 
#define  FormRef1 135 
#define  FormRef2 134 
#define  FormRef4 133 
#define  FormRef8 132 
#define  FormRefAddr 131 
#define  FormRefUdata 130 
#define  FormSdata 129 
#define  FormUdata 128 
 int TAddress ; 
 int TConstant ; 
 int TReference ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(DwarfBuf *b, int form, ulong unit, ulong *u, int *type)
{
	static int nbad;
	uvlong uv;

	switch(form){
	default:
		return -1;

	/* addresses */
	case FormAddr:
		*type = TAddress;
		*u = FUNC6(b);
		return 0;

	/* references */
	case FormRefAddr:
		/* absolute ref in .debug_info */
		*type = TReference;
		*u = FUNC6(b);
		return 0;
	case FormRef1:
		*u = FUNC0(b);
		goto relativeref;
	case FormRef2:
		*u = FUNC3(b);
		goto relativeref;
	case FormRef4:
		*u = FUNC4(b);
		goto relativeref;
	case FormRef8:
		*u = FUNC5(b);
		goto relativeref;
	case FormRefUdata:
		*u = FUNC1(b);
	relativeref:
		*u += unit;
		*type = TReference;
		return 0;

	/* constants */
	case FormData1:
		*u = FUNC0(b);
		goto constant;
	case FormData2:
		*u = FUNC3(b);
		goto constant;
	case FormData4:
		*u = FUNC4(b);
		goto constant;
	case FormData8:
		uv = FUNC5(b);
		*u = uv;
		if(uv != *u && ++nbad == 1)
			FUNC7("dwarf: truncating 64-bit attribute constants");
		goto constant;
	case FormSdata:
		*u = FUNC2(b);
		goto constant;
	case FormUdata:
		*u = FUNC1(b);
	constant:
		*type = TConstant;
		return 0;
	}
}