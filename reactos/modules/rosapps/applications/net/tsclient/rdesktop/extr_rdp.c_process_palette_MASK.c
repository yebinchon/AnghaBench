#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
struct TYPE_5__ {int ncolours; TYPE_2__* colours; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  HCOLOURMAP ;
typedef  TYPE_1__ COLOURMAP ;
typedef  TYPE_2__ COLOURENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC8(RDPCLIENT * This, STREAM s)
{
	COLOURENTRY *entry;
	COLOURMAP map;
	HCOLOURMAP hmap;
	int i;

	FUNC4(s, 2);	/* pad */
	FUNC2(s, map.ncolours);
	FUNC4(s, 2);	/* pad */

	map.colours = (COLOURENTRY *) FUNC5(sizeof(COLOURENTRY) * map.ncolours);

	if(map.colours == NULL)
	{
		FUNC4(s, sizeof(*entry) * map.ncolours);
		return;
	}

	FUNC0(("PALETTE(c=%d)\n", map.ncolours));

	for (i = 0; i < map.ncolours; i++)
	{
		entry = &map.colours[i];
		FUNC3(s, entry->red);
		FUNC3(s, entry->green);
		FUNC3(s, entry->blue);
	}

	hmap = FUNC6(This, &map);
	FUNC7(This, hmap);

	FUNC1(map.colours);
}