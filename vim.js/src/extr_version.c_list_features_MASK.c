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
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int Columns ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** features ; 
 int /*<<< orphan*/  got_int ; 
 int msg_col ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4()
{
    int		i;
    int		ncol;
    int		nrow;
    int		nfeat = 0;
    int		width = 0;

    /* Find the length of the longest feature name, use that + 1 as the column
     * width */
    for (i = 0; features[i] != NULL; ++i)
    {
	int l = (int)FUNC0(features[i]);

	if (l > width)
	    width = l;
	++nfeat;
    }
    width += 1;

    if (Columns < width)
    {
	/* Not enough screen columns - show one per line */
	for (i = 0; features[i] != NULL; ++i)
	{
	    FUNC3(features[i]);
	    if (msg_col > 0)
		FUNC1('\n');
	}
	return;
    }

    /* The rightmost column doesn't need a separator.
     * Sacrifice it to fit in one more column if possible. */
    ncol = (int) (Columns + 1) / width;
    nrow = nfeat / ncol + (nfeat % ncol ? 1 : 0);

    /* i counts columns then rows.  idx counts rows then columns. */
    for (i = 0; !got_int && i < nrow * ncol; ++i)
    {
	int idx = (i / ncol) + (i % ncol) * nrow;

	if (idx < nfeat)
	{
	    int last_col = (i + 1) % ncol == 0;

	    FUNC2((char_u *)features[idx]);
	    if (last_col)
	    {
		if (msg_col > 0)
		    FUNC1('\n');
	    }
	    else
	    {
		while (msg_col % width)
		    FUNC1(' ');
	    }
	}
	else
	{
	    if (msg_col > 0)
		FUNC1('\n');
	}
    }
}