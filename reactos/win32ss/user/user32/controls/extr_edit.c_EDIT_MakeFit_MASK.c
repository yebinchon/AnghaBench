#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_6__ {int buffer_size; scalar_t__ hloc32W; } ;
typedef  scalar_t__ HLOCAL ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EN_ERRSPACE ; 
 int /*<<< orphan*/  FALSE ; 
 int LMEM_MOVEABLE ; 
 int LMEM_ZEROINIT ; 
 scalar_t__ FUNC3 (scalar_t__,int,int) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static BOOL FUNC8(EDITSTATE *es, UINT size)
{
	HLOCAL hNew32W;

	if (size <= es->buffer_size)
		return TRUE;

	FUNC6("trying to ReAlloc to %d+1 characters\n", size);

        /* Force edit to unlock its buffer. es->text now NULL */
	FUNC2(es, TRUE);

	if (es->hloc32W) {
	    UINT alloc_size = FUNC5((size + 1) * sizeof(WCHAR));
	    if ((hNew32W = FUNC3(es->hloc32W, alloc_size, LMEM_MOVEABLE | LMEM_ZEROINIT))) {
		FUNC6("Old 32 bit handle %p, new handle %p\n", es->hloc32W, hNew32W);
		es->hloc32W = hNew32W;
		es->buffer_size = FUNC4(hNew32W)/sizeof(WCHAR) - 1;
	    }
	}

	FUNC0(es);

	if (es->buffer_size < size) {
		FUNC7("FAILED !  We now have %d+1\n", es->buffer_size);
		FUNC1(es, EN_ERRSPACE);
		return FALSE;
	} else {
		FUNC6("We now have %d+1\n", es->buffer_size);
		return TRUE;
	}
}