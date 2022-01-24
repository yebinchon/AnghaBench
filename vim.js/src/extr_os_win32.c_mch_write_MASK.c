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
typedef  char char_u ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_4__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_3__ {scalar_t__ Bottom; int Left; scalar_t__ Top; scalar_t__ Right; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  Columns ; 
 char ESC ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char NUL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ fdDump ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,scalar_t__) ; 
 TYPE_2__ g_coord ; 
 TYPE_1__ g_srScrollRegion ; 
 int FUNC11 (char**) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ p_wd ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  term_console ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int,char*,unsigned int) ; 
 int FUNC29 (char*,int) ; 

void
FUNC30(
    char_u  *s,
    int	    len)
{
    s[len] = NUL;

    if (!term_console)
    {
	FUNC28(1, s, (unsigned)len);
	return;
    }

    /* translate ESC | sequences into faked bios calls */
    while (len--)
    {
	/* optimization: use one single write_chars for runs of text,
	 * rather than once per character  It ain't curses, but it helps. */
	DWORD  prefix = (DWORD)FUNC21(s, "\n\r\b\a\033");

	if (p_wd)
	{
	    FUNC1(p_wd);
	    if (prefix != 0)
		prefix = 1;
	}

	if (prefix != 0)
	{
	    DWORD nWritten;

	    nWritten = FUNC29(s, prefix);
#ifdef MCH_WRITE_DUMP
	    if (fdDump)
	    {
		fputc('>', fdDump);
		fwrite(s, sizeof(char_u), nWritten, fdDump);
		fputs("<\n", fdDump);
	    }
#endif
	    len -= (nWritten - 1);
	    s += nWritten;
	}
	else if (s[0] == '\n')
	{
	    /* \n, newline: go to the beginning of the next line or scroll */
	    if (g_coord.Y == g_srScrollRegion.Bottom)
	    {
		FUNC17(1);
		FUNC12(g_srScrollRegion.Left + 1, g_srScrollRegion.Bottom + 1);
	    }
	    else
	    {
		FUNC12(g_srScrollRegion.Left + 1, g_coord.Y + 2);
	    }
#ifdef MCH_WRITE_DUMP
	    if (fdDump)
		fputs("\\n\n", fdDump);
#endif
	    s++;
	}
	else if (s[0] == '\r')
	{
	    /* \r, carriage return: go to beginning of line */
	    FUNC12(g_srScrollRegion.Left+1, g_coord.Y + 1);
#ifdef MCH_WRITE_DUMP
	    if (fdDump)
		fputs("\\r\n", fdDump);
#endif
	    s++;
	}
	else if (s[0] == '\b')
	{
	    /* \b, backspace: move cursor one position left */
	    if (g_coord.X > g_srScrollRegion.Left)
		g_coord.X--;
	    else if (g_coord.Y > g_srScrollRegion.Top)
	    {
		g_coord.X = g_srScrollRegion.Right;
		g_coord.Y--;
	    }
	    FUNC12(g_coord.X + 1, g_coord.Y + 1);
#ifdef MCH_WRITE_DUMP
	    if (fdDump)
		fputs("\\b\n", fdDump);
#endif
	    s++;
	}
	else if (s[0] == '\a')
	{
	    /* \a, bell */
	    FUNC0(0xFFFFFFFF);
#ifdef MCH_WRITE_DUMP
	    if (fdDump)
		fputs("\\a\n", fdDump);
#endif
	    s++;
	}
	else if (s[0] == ESC && len >= 3-1 && s[1] == '|')
	{
#ifdef MCH_WRITE_DUMP
	    char_u  *old_s = s;
#endif
	    char_u  *p;
	    int	    arg1 = 0, arg2 = 0;

	    switch (s[2])
	    {
	    /* one or two numeric arguments, separated by ';' */

	    case '0': case '1': case '2': case '3': case '4':
	    case '5': case '6': case '7': case '8': case '9':
		p = s + 2;
		arg1 = FUNC11(&p);	    /* no check for length! */
		if (p > s + len)
		    break;

		if (*p == ';')
		{
		    ++p;
		    arg2 = FUNC11(&p);   /* no check for length! */
		    if (p > s + len)
			break;

		    if (*p == 'H')
			FUNC12(arg2, arg1);
		    else if (*p == 'r')
			FUNC18(0, arg1 - 1, Columns - 1, arg2 - 1);
		}
		else if (*p == 'A')
		{
		    /* move cursor up arg1 lines in same column */
		    FUNC12(g_coord.X + 1,
			   FUNC14(g_srScrollRegion.Top, g_coord.Y - arg1) + 1);
		}
		else if (*p == 'C')
		{
		    /* move cursor right arg1 columns in same line */
		    FUNC12(FUNC15(g_srScrollRegion.Right, g_coord.X + arg1) + 1,
			   g_coord.Y + 1);
		}
		else if (*p == 'H')
		{
		    FUNC12(1, arg1);
		}
		else if (*p == 'L')
		{
		    FUNC13(arg1);
		}
		else if (*p == 'm')
		{
		    if (arg1 == 0)
			FUNC16();
		    else
			FUNC24((WORD) arg1);
		}
		else if (*p == 'f')
		{
		    FUNC26((WORD) arg1);
		}
		else if (*p == 'b')
		{
		    FUNC25((WORD) arg1);
		}
		else if (*p == 'M')
		{
		    FUNC6(arg1);
		}

		len -= (int)(p - s);
		s = p + 1;
		break;


	    /* Three-character escape sequences */

	    case 'A':
		/* move cursor up one line in same column */
		FUNC12(g_coord.X + 1,
		       FUNC14(g_srScrollRegion.Top, g_coord.Y - 1) + 1);
		goto got3;

	    case 'B':
		FUNC27();
		goto got3;

	    case 'C':
		/* move cursor right one column in same line */
		FUNC12(FUNC15(g_srScrollRegion.Right, g_coord.X + 1) + 1,
		       g_coord.Y + 1);
		goto got3;

	    case 'E':
		FUNC22();
		goto got3;

	    case 'F':
		FUNC20();
		goto got3;

	    case 'f':
		FUNC19();
		goto got3;

	    case 'H':
		FUNC12(1, 1);
		goto got3;

	    case 'j':
		FUNC3();
		goto got3;

	    case 'J':
		FUNC2();
		goto got3;

	    case 'K':
		FUNC4();
		goto got3;

	    case 'L':
		FUNC13(1);
		goto got3;

	    case 'M':
		FUNC6(1);
		goto got3;

	    case 'S':
		FUNC23();
		goto got3;

	    case 'V':
		FUNC5(TRUE);
		goto got3;

	    case 'v':
		FUNC5(FALSE);
		goto got3;

	    got3:
		s += 3;
		len -= 2;
	    }

#ifdef MCH_WRITE_DUMP
	    if (fdDump)
	    {
		fputs("ESC | ", fdDump);
		fwrite(old_s + 2, sizeof(char_u), s - old_s - 2, fdDump);
		fputc('\n', fdDump);
	    }
#endif
	}
	else
	{
	    /* Write a single character */
	    DWORD nWritten;

	    nWritten = FUNC29(s, 1);
#ifdef MCH_WRITE_DUMP
	    if (fdDump)
	    {
		fputc('>', fdDump);
		fwrite(s, sizeof(char_u), nWritten, fdDump);
		fputs("<\n", fdDump);
	    }
#endif

	    len -= (nWritten - 1);
	    s += nWritten;
	}
    }

#ifdef MCH_WRITE_DUMP
    if (fdDump)
	fflush(fdDump);
#endif
}