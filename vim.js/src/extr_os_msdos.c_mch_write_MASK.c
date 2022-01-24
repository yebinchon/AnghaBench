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
typedef  char char_u ;

/* Variables and functions */
 char ESC ; 
 int S_iBottom ; 
 int S_iCurrentColumn ; 
 int S_iLeft ; 
 int S_iRight ; 
 int S_iTop ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ full_screen ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int,int) ; 
 scalar_t__ p_wd ; 
 scalar_t__ term_console ; 
 int /*<<< orphan*/  FUNC15 (int,char*,unsigned int) ; 

void
FUNC16(
    char_u	*s,
    int		len)
{
    char_u	*p;
    int		row, col;

    if (term_console && full_screen)
	while (len--)
	{
	    /* translate ESC | sequences into bios calls */
	    if (p_wd)	    /* testing: wait a bit for each char */
		FUNC1(p_wd);

	    if (s[0] == '\n')
#ifdef DJGPP
	    {
		myflush();
		S_iCurrentColumn = S_iLeft - 1;
	    }
#else
		FUNC10('\r');
#endif
	    else if (s[0] == ESC && len > 1 && s[1] == '|')
	    {
		switch (s[2])
		{
#ifdef DJGPP
		case 'B':   ScreenVisualBell();
			    goto got3;
#endif
		case 'J':
#ifdef DJGPP
			    myflush();
#endif
			    FUNC3();
			    goto got3;

		case 'K':
#ifdef DJGPP
			    myflush();
#endif
			    FUNC2();
			    goto got3;

		case 'L':
#ifdef DJGPP
			    myflush();
#endif
			    FUNC8();
			    goto got3;

		case 'M':
#ifdef DJGPP
			    myflush();
#endif
			    FUNC4();
got3:			    s += 3;
			    len -= 2;
			    continue;

		case '0':
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':   p = s + 2;
			    row = FUNC6(&p);    /* no check for length! */
			    if (p > s + len)
				break;
			    if (*p == ';')
			    {
				++p;
				col = FUNC6(&p); /* no check for length! */
				if (p > s + len)
				    break;
				if (*p == 'H' || *p == 'r' || *p == 'V')
				{
#ifdef DJGPP
				    myflush();
#endif
				    if (*p == 'H')  /* set cursor position */
					FUNC7(col, row);
				    else if (*p == 'V')
					FUNC14(row, S_iTop, col, S_iBottom);
				    else	    /* set scroll region  */
					FUNC14(S_iLeft, row, S_iRight, col);
				    len -= p - s;
				    s = p + 1;
				    continue;
				}
			    }
			    else if (*p == 'm' || *p == 'f' || *p == 'b')
			    {
				if (*p == 'm')	    /* set color */
				{
				    if (row == 0)
					FUNC9();/* reset color */
				    else
					FUNC11(row);
				}
				else if (*p == 'f') /* set foreground color */
				    FUNC13(row);
				else		    /* set background color */
				    FUNC12(row);

				len -= p - s;
				s = p + 1;
				continue;
			    }
		}
	    }
	    FUNC10(*s++);
	}
    else
    {
	FUNC15(1, s, (unsigned)len);
    }
}