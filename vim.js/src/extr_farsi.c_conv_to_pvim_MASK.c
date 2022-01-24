#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  linenr_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_3__ {int ml_line_count; } ;
struct TYPE_4__ {TYPE_1__ b_ml; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HLF_S ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* curbuf ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  farsi_text_1 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void
FUNC14()
{
    char_u	*ptr;
    int		lnum, llen, i;

    for (lnum = 1; lnum <= curbuf->b_ml.ml_line_count; ++lnum)
    {
	ptr = FUNC8((linenr_T)lnum);

	llen = (int)FUNC3(ptr);

	for ( i = 0; i < llen-1; i++)
	{
	    if (FUNC4(ptr[i]) && FUNC5(ptr[i+1]))
	    {
		ptr[i] = FUNC13(ptr[i]);
		++i;

		while (FUNC5(ptr[i]) && i < llen)
		{
		    ptr[i] = FUNC10(ptr[i]);
		    if (FUNC1(ptr[i]) || !FUNC0(ptr[i]))
			break;
		    ++i;
		}
		if (!FUNC0(ptr[i]) || !FUNC5(ptr[i]))
		    ptr[i-1] = FUNC12(ptr[i-1]);
	    }
	    else
		ptr[i] = FUNC11(ptr[i]);
	}
    }

    /*
     * Following lines contains Farsi encoded character.
     */

    FUNC6((char_u *)"%s/\202\231/\232/g");
    FUNC6((char_u *)"%s/\201\231/\370\334/g");

    /* Assume the screen has been messed up: clear it and redraw. */
    FUNC9(CLEAR);
    FUNC2(farsi_text_1, FUNC7(HLF_S));
}