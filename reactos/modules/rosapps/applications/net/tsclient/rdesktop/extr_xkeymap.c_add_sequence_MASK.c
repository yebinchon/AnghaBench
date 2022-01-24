#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t seq_keysym; struct TYPE_8__* next; } ;
typedef  TYPE_2__ key_translation ;
struct TYPE_7__ {TYPE_2__** keymap; } ;
struct TYPE_9__ {TYPE_1__ xkeymap; } ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  size_t KeySym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t KEYMAP_MASK ; 
 int KEYMAP_MAX_LINE_LENGTH ; 
 size_t NoSymbol ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(RDPCLIENT * This, char *rest, char *mapname)
{
	KeySym keysym;
	key_translation *tr, **prev_next;
	size_t chars;
	char keyname[KEYMAP_MAX_LINE_LENGTH];

	/* Skip over whitespace after the sequence keyword */
	chars = FUNC6(rest, " \t");
	rest += chars;

	/* Fetch the keysym name */
	chars = FUNC5(rest, " \t\0");
	FUNC1(keyname, rest, chars + 1);
	rest += chars;

	keysym = FUNC2(keyname);
	if (keysym == NoSymbol)
	{
		FUNC0(("Bad keysym \"%s\" in keymap %s (ignoring line)\n", keyname, mapname));
		return;
	}


	FUNC0(("Adding sequence for keysym (0x%lx, %s) -> ", keysym, keyname));

	FUNC3(This->xkeymap.keymap[keysym & KEYMAP_MASK]);
	prev_next = &This->xkeymap.keymap[keysym & KEYMAP_MASK];

	while (*rest)
	{
		/* Skip whitespace */
		chars = FUNC6(rest, " \t");
		rest += chars;

		/* Fetch the keysym name */
		chars = FUNC5(rest, " \t\0");
		FUNC1(keyname, rest, chars + 1);
		rest += chars;

		keysym = FUNC2(keyname);
		if (keysym == NoSymbol)
		{
			FUNC0(("Bad keysym \"%s\" in keymap %s (ignoring line)\n", keyname,
				   mapname));
			return;
		}

		/* Allocate space for key_translation structure */
		tr = (key_translation *) FUNC7(sizeof(key_translation));
		FUNC4(tr, 0, sizeof(key_translation));
		*prev_next = tr;
		prev_next = &tr->next;
		tr->seq_keysym = keysym;

		FUNC0(("0x%x, ", (unsigned int) keysym));
	}
	FUNC0(("\n"));
}