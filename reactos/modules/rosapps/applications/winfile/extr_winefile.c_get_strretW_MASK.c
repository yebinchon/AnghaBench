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
struct TYPE_3__ {int uType; scalar_t__ (* UNION_MEMBER ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ STRRET ;
typedef  int /*<<< orphan*/  SHITEMID ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ LPCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
#define  STRRET_CSTR 130 
#define  STRRET_OFFSET 129 
#define  STRRET_WSTR 128 
 int /*<<< orphan*/  cStr ; 
 int /*<<< orphan*/  pOleStr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uOffset ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(STRRET* str, const SHITEMID* shiid, LPWSTR buffer, int len)
{
 switch(str->uType) {
  case STRRET_WSTR:
	FUNC4(buffer, str->UNION_MEMBER(pOleStr), len);
	break;

  case STRRET_OFFSET:
	FUNC0(CP_ACP, 0, (LPCSTR)shiid+str->UNION_MEMBER(uOffset), -1, buffer, len);
	break;

  case STRRET_CSTR:
	FUNC0(CP_ACP, 0, str->UNION_MEMBER(cStr), -1, buffer, len);
 }
}