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
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
 unsigned long SEAMLESSRDP_HELLO_HIDDEN ; 
 int /*<<< orphan*/  True ; 
 char* FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long,int,int,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 char* FUNC19 (char const*) ; 

__attribute__((used)) static BOOL
FUNC20(RDPCLIENT * This, const char *line, void *data)
{
	char *p, *l;
	char *tok1, *tok2, *tok3, *tok4, *tok5, *tok6, *tok7, *tok8;
	unsigned long id, flags;
	char *endptr;

	l = FUNC19(line);
	p = l;

	FUNC0(("seamlessrdp got:%s\n", p));

	tok1 = FUNC1(&p);
	tok2 = FUNC1(&p);
	tok3 = FUNC1(&p);
	tok4 = FUNC1(&p);
	tok5 = FUNC1(&p);
	tok6 = FUNC1(&p);
	tok7 = FUNC1(&p);
	tok8 = FUNC1(&p);

	if (!FUNC2("CREATE", tok1))
	{
		unsigned long group, parent;
		if (!tok6)
			return False;

		id = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		group = FUNC4(tok4, &endptr, 0);
		if (*endptr)
			return False;

		parent = FUNC4(tok5, &endptr, 0);
		if (*endptr)
			return False;

		flags = FUNC4(tok6, &endptr, 0);
		if (*endptr)
			return False;

		FUNC7(This, id, group, parent, flags);
	}
	else if (!FUNC2("DESTROY", tok1))
	{
		if (!tok4)
			return False;

		id = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		flags = FUNC4(tok4, &endptr, 0);
		if (*endptr)
			return False;

		FUNC9(This, id, flags);

	}
	else if (!FUNC2("DESTROYGRP", tok1))
	{
		if (!tok4)
			return False;

		id = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		flags = FUNC4(tok4, &endptr, 0);
		if (*endptr)
			return False;

		FUNC8(This, id, flags);
	}
	else if (!FUNC2("SETICON", tok1))
	{
		FUNC17("SeamlessRDP SETICON1\n");
	}
	else if (!FUNC2("POSITION", tok1))
	{
		int x, y, width, height;

		if (!tok8)
			return False;

		id = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		x = FUNC3(tok4, &endptr, 0);
		if (*endptr)
			return False;
		y = FUNC3(tok5, &endptr, 0);
		if (*endptr)
			return False;

		width = FUNC3(tok6, &endptr, 0);
		if (*endptr)
			return False;
		height = FUNC3(tok7, &endptr, 0);
		if (*endptr)
			return False;

		flags = FUNC4(tok8, &endptr, 0);
		if (*endptr)
			return False;

		FUNC11(This, id, x, y, width, height, flags);
	}
	else if (!FUNC2("ZCHANGE", tok1))
	{
		unsigned long behind;

		id = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		behind = FUNC4(tok4, &endptr, 0);
		if (*endptr)
			return False;

		flags = FUNC4(tok5, &endptr, 0);
		if (*endptr)
			return False;

		FUNC12(This, id, behind, flags);
	}
	else if (!FUNC2("TITLE", tok1))
	{
		if (!tok5)
			return False;

		id = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		flags = FUNC4(tok5, &endptr, 0);
		if (*endptr)
			return False;

		FUNC14(This, id, tok4, flags);
	}
	else if (!FUNC2("STATE", tok1))
	{
		unsigned int state;

		if (!tok5)
			return False;

		id = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		state = FUNC4(tok4, &endptr, 0);
		if (*endptr)
			return False;

		flags = FUNC4(tok5, &endptr, 0);
		if (*endptr)
			return False;

		FUNC13(This, id, state, flags);
	}
	else if (!FUNC2("DEBUG", tok1))
	{
		FUNC0(("SeamlessRDP:%s\n", line));
	}
	else if (!FUNC2("SYNCBEGIN", tok1))
	{
		if (!tok3)
			return False;

		flags = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		FUNC15(This, flags);
	}
	else if (!FUNC2("SYNCEND", tok1))
	{
		if (!tok3)
			return False;

		flags = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		/* do nothing, currently */
	}
	else if (!FUNC2("HELLO", tok1))
	{
		if (!tok3)
			return False;

		flags = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		FUNC6(This, !!(flags & SEAMLESSRDP_HELLO_HIDDEN));
	}
	else if (!FUNC2("ACK", tok1))
	{
		unsigned int serial;

		serial = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		FUNC5(This, serial);
	}
	else if (!FUNC2("HIDE", tok1))
	{
		if (!tok3)
			return False;

		flags = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		FUNC10(This);
	}
	else if (!FUNC2("UNHIDE", tok1))
	{
		if (!tok3)
			return False;

		flags = FUNC4(tok3, &endptr, 0);
		if (*endptr)
			return False;

		FUNC16(This);
	}


	FUNC18(l);
	return True;
}