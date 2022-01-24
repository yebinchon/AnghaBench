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
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int lock_count; int /*<<< orphan*/ * text; scalar_t__ hloc32W; scalar_t__ hloc32A; int /*<<< orphan*/  hwndSelf; scalar_t__ hlocapp; } ;
typedef  scalar_t__ HLOCAL ;
typedef  TYPE_1__ EDITSTATE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int LMEM_MOVEABLE ; 
 int LMEM_ZEROINIT ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(EDITSTATE *es, BOOL force)
{
        if (es->hlocapp) return;

	/* Edit window might be already destroyed */
	if(!FUNC1(es->hwndSelf))
	{
	    FUNC8("edit hwnd %p already destroyed\n", es->hwndSelf);
	    return;
	}

	if (!es->lock_count) {
		FUNC0("lock_count == 0 ... please report\n");
		return;
	}
	if (!es->text) {
		FUNC0("es->text == 0 ... please report\n");
		return;
	}

	if (force || (es->lock_count == 1)) {
	    if (es->hloc32W) {
		UINT countA = 0;
		UINT countW = FUNC10(es) + 1;

		if(es->hloc32A)
		{
		    UINT countA_new = FUNC9(CP_ACP, 0, es->text, countW, NULL, 0, NULL, NULL);
		    FUNC7("Synchronizing with 32-bit ANSI buffer\n");
		    FUNC7("%d WCHARs translated to %d bytes\n", countW, countA_new);
		    countA = FUNC4(es->hloc32A);
		    if(countA_new > countA)
		    {
			HLOCAL hloc32A_new;
			UINT alloc_size = FUNC6(countA_new);
			FUNC7("Resizing 32-bit ANSI buffer from %d to %d bytes\n", countA, alloc_size);
			hloc32A_new = FUNC3(es->hloc32A, alloc_size, LMEM_MOVEABLE | LMEM_ZEROINIT);
			if(hloc32A_new)
			{
			    es->hloc32A = hloc32A_new;
			    countA = FUNC4(hloc32A_new);
			    FUNC7("Real new size %d bytes\n", countA);
			}
			else
			    FUNC8("FAILED! Will synchronize partially\n");
		    }
		    FUNC9(CP_ACP, 0, es->text, countW,
                                        FUNC2(es->hloc32A), countA, NULL, NULL);
                    FUNC5(es->hloc32A);
		}

		FUNC5(es->hloc32W);
		es->text = NULL;
	    }
	    else {
		FUNC0("no buffer ... please report\n");
		return;
	    }
	}
	es->lock_count--;
}