#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_12__ {int style; void* hloc32A; void* hloc32W; int buffer_size; int /*<<< orphan*/  flags; scalar_t__ selection_end; scalar_t__ selection_start; scalar_t__ y_offset; scalar_t__ x_offset; int /*<<< orphan*/ * hlocapp; scalar_t__ is_unicode; } ;
typedef  int INT ;
typedef  void* HLOCAL ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EF_MODIFIED ; 
 int /*<<< orphan*/  EF_UPDATE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int ES_MULTILINE ; 
 int LMEM_MOVEABLE ; 
 int LMEM_ZEROINIT ; 
 void* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (void*) ; 
 int FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC17(EDITSTATE *es, HLOCAL hloc)
{
	if (!(es->style & ES_MULTILINE))
		return;

	if (!hloc) {
		FUNC14("called with NULL handle\n");
		return;
	}

	FUNC4(es, TRUE);

	if(es->is_unicode)
	{
	    if(es->hloc32A)
	    {
		FUNC9(es->hloc32A);
		es->hloc32A = NULL;
	    }
	    es->hloc32W = hloc;
	}
	else
	{
	    INT countW, countA;
	    HLOCAL hloc32W_new;
	    WCHAR *textW;
	    CHAR *textA;

	    countA = FUNC11(hloc);
	    textA = FUNC10(hloc);
	    countW = FUNC13(CP_ACP, 0, textA, countA, NULL, 0);
	    if(!(hloc32W_new = FUNC8(LMEM_MOVEABLE | LMEM_ZEROINIT, countW * sizeof(WCHAR))))
	    {
		FUNC7("Could not allocate new unicode buffer\n");
		return;
	    }
	    textW = FUNC10(hloc32W_new);
	    FUNC13(CP_ACP, 0, textA, countA, textW, countW);
	    FUNC12(hloc32W_new);
	    FUNC12(hloc);

	    if(es->hloc32W)
		FUNC9(es->hloc32W);

	    es->hloc32W = hloc32W_new;
	    es->hloc32A = hloc;
	}

	es->buffer_size = FUNC11(es->hloc32W)/sizeof(WCHAR) - 1;

        /* The text buffer handle belongs to the control */
        es->hlocapp = NULL;

	FUNC3(es);
        FUNC16(es);

	es->x_offset = es->y_offset = 0;
	es->selection_start = es->selection_end = 0;
	FUNC1(es);
	es->flags &= ~EF_MODIFIED;
	es->flags &= ~EF_UPDATE;
	FUNC0(es, 0, FUNC15(es), 0, NULL);
	FUNC6(es, NULL, TRUE);
	FUNC2(es);
	/* force scroll info update */
	FUNC5(es);
}