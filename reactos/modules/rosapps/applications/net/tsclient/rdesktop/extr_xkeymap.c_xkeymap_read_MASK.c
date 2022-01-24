#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8 ;
typedef  scalar_t__ uint16 ;
typedef  int /*<<< orphan*/  line ;
struct TYPE_5__ {void* keyboard_functionkeys; void* keyboard_subtype; void* keyboard_type; void* enable_compose; int /*<<< orphan*/  keylayout; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  FILE ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* False ; 
 int KEYMAP_MAX_LINE_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MapAltGrMask ; 
 int /*<<< orphan*/  MapInhibitMask ; 
 int /*<<< orphan*/  MapLeftShiftMask ; 
 int /*<<< orphan*/  MapLocalStateMask ; 
 int /*<<< orphan*/  MapNumLockMask ; 
 void* True ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,void*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (char*,char) ; 
 unsigned int FUNC9 (char*) ; 
 unsigned int FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 void* FUNC12 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *,int) ; 
 char FUNC14 (int) ; 
 int /*<<< orphan*/ * FUNC15 (char*) ; 

__attribute__((used)) static BOOL
FUNC16(RDPCLIENT * This, char *mapname)
{
	FILE *fp;
	char line[KEYMAP_MAX_LINE_LENGTH];
	unsigned int line_num = 0;
	unsigned int line_length = 0;
	char *keyname, *p;
	char *line_rest;
	uint8 scancode;
	uint16 modifiers;

	fp = FUNC15(mapname);
	if (fp == NULL)
	{
		FUNC4("Failed to open keymap %s\n", mapname);
		return False;
	}

	/* FIXME: More tolerant on white space */
	while (FUNC6(line, sizeof(line), fp) != NULL)
	{
		line_num++;

		/* Replace the \n with \0 */
		p = FUNC8(line, '\n');
		if (p != NULL)
			*p = 0;

		line_length = FUNC9(line);

		/* Completely empty line */
		if (FUNC10(line, " \t\n\r\f\v") == line_length)
		{
			continue;
		}

		/* Include */
		if (FUNC7(line, "include "))
		{
			if (!FUNC16(This, line + sizeof("include ") - 1))
				return False;
			continue;
		}

		/* map */
		if (FUNC7(line, "map "))
		{
			This->keylayout = FUNC13(line + sizeof("map ") - 1, NULL, 16);
			FUNC0(("Keylayout 0x%x\n", This->keylayout));
			continue;
		}

		/* compose */
		if (FUNC7(line, "enable_compose"))
		{
			FUNC0(("Enabling compose handling\n"));
			This->enable_compose = True;
			continue;
		}

		/* sequence */
		if (FUNC7(line, "sequence"))
		{
			FUNC2(This, line + sizeof("sequence") - 1, mapname);
			continue;
		}

		/* keyboard_type */
		if (FUNC7(line, "keyboard_type "))
		{
			This->keyboard_type = FUNC12(line + sizeof("keyboard_type ") - 1, NULL, 16);
			FUNC0(("keyboard_type 0x%x\n", This->keyboard_type));
			continue;
		}

		/* keyboard_subtype */
		if (FUNC7(line, "keyboard_subtype "))
		{
			This->keyboard_subtype =
				FUNC12(line + sizeof("keyboard_subtype ") - 1, NULL, 16);
			FUNC0(("keyboard_subtype 0x%x\n", This->keyboard_subtype));
			continue;
		}

		/* keyboard_functionkeys */
		if (FUNC7(line, "keyboard_functionkeys "))
		{
			This->keyboard_functionkeys =
				FUNC12(line + sizeof("keyboard_functionkeys ") - 1, NULL, 16);
			FUNC0(("keyboard_functionkeys 0x%x\n", This->keyboard_functionkeys));
			continue;
		}

		/* Comment */
		if (line[0] == '#')
		{
			continue;
		}

		/* Normal line */
		keyname = line;
		p = FUNC8(line, ' ');
		if (p == NULL)
		{
			FUNC4("Bad line %d in keymap %s\n", line_num, mapname);
			continue;
		}
		else
		{
			*p = 0;
		}

		/* scancode */
		p++;
		scancode = FUNC12(p, &line_rest, 16);

		/* flags */
		/* FIXME: Should allow case-insensitive flag names.
		   Fix by using lex+yacc... */
		modifiers = 0;
		if (FUNC11(line_rest, "altgr"))
		{
			FUNC1(modifiers, MapAltGrMask);
		}

		if (FUNC11(line_rest, "shift"))
		{
			FUNC1(modifiers, MapLeftShiftMask);
		}

		if (FUNC11(line_rest, "numlock"))
		{
			FUNC1(modifiers, MapNumLockMask);
		}

		if (FUNC11(line_rest, "localstate"))
		{
			FUNC1(modifiers, MapLocalStateMask);
		}

		if (FUNC11(line_rest, "inhibit"))
		{
			FUNC1(modifiers, MapInhibitMask);
		}

		FUNC3(This, keyname, scancode, modifiers, mapname);

		if (FUNC11(line_rest, "addupper"))
		{
			/* Automatically add uppercase key, with same modifiers
			   plus shift */
			for (p = keyname; *p; p++)
				*p = FUNC14((int) *p);
			FUNC1(modifiers, MapLeftShiftMask);
			FUNC3(This, keyname, scancode, modifiers, mapname);
		}
	}

	FUNC5(fp);
	return True;
}