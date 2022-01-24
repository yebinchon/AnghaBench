#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong ;
typedef  int u64int ;
typedef  int schar ;
typedef  int s64int ;
typedef  int s32int ;
typedef  int s16int ;
struct TYPE_13__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_12__ {int /*<<< orphan*/ * d; scalar_t__ ep; scalar_t__ p; } ;
typedef  TYPE_1__ DwarfBuf ;
typedef  TYPE_2__ DwarfBlock ;
typedef  int /*<<< orphan*/  Dwarf ;

/* Variables and functions */
#define  OpAddr 139 
#define  OpConst1s 138 
#define  OpConst1u 137 
#define  OpConst2s 136 
#define  OpConst2u 135 
#define  OpConst4s 134 
#define  OpConst4u 133 
#define  OpConst8s 132 
#define  OpConst8u 131 
#define  OpConsts 130 
#define  OpConstu 129 
#define  OpPlusUconst 128 
 int TBlock ; 
 int TConstant ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(Dwarf *d, DwarfBlock *bl, ulong *pval)
{
	DwarfBuf b;

	FUNC7(&b, 0, sizeof b);
	b.p = bl->data;
	b.ep = bl->data+bl->len;
	b.d = d;

	switch(FUNC0(&b)){
	case OpAddr:
		*pval = FUNC6(&b);
		return TConstant;
	case OpConst1u:
		*pval = FUNC0(&b);
		return TConstant;
	case OpConst1s:
		*pval = (schar)FUNC0(&b);
		return TConstant;
	case OpConst2u:
		*pval = FUNC3(&b);
		return TConstant;
	case OpConst2s:
		*pval = (s16int)FUNC3(&b);
		return TConstant;
	case OpConst4u:
		*pval = FUNC4(&b);
		return TConstant;
	case OpConst4s:
		*pval = (s32int)FUNC4(&b);
		return TConstant;
	case OpConst8u:
		*pval = (u64int)FUNC5(&b);
		return TConstant;
	case OpConst8s:
		*pval = (s64int)FUNC5(&b);
		return TConstant;
	case OpConstu:
		*pval = FUNC1(&b);
		return TConstant;
	case OpConsts:
		*pval = FUNC2(&b);
		return TConstant;
	case OpPlusUconst:
		*pval = FUNC1(&b);
		return TConstant;
	default:
		return TBlock;
	}
}