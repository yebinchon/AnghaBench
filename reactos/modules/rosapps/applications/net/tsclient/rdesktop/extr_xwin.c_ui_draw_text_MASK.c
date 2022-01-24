#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_12__ {scalar_t__ yoffset; scalar_t__ xoffset; int /*<<< orphan*/  wnd; } ;
struct TYPE_11__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {int /*<<< orphan*/  gc; int /*<<< orphan*/  backstore; } ;
struct TYPE_10__ {int width; TYPE_1__ xwin; int /*<<< orphan*/  display; int /*<<< orphan*/  wnd; scalar_t__ ownbackstore; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  FONTGLYPH ;
typedef  TYPE_3__ DATABLOB ;
typedef  int /*<<< orphan*/  BRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FillSolid ; 
 int /*<<< orphan*/  FillStippled ; 
 int MIX_OPAQUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int TEXT2_IMPLICIT_X ; 
 int TEXT2_VERTICAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_5__* sw ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void
FUNC11(RDPCLIENT * This, uint8 font, uint8 flags, uint8 opcode, int mixmode, int x, int y,
	     int clipx, int clipy, int clipcx, int clipcy,
	     int boxx, int boxy, int boxcx, int boxcy, BRUSH * brush,
	     int bgcolour, int fgcolour, uint8 * text, uint8 length)
{
	/* TODO: use brush appropriately */

	FONTGLYPH *glyph;
	int i, j, xyoffset, x1, y1;
	DATABLOB *entry;

	FUNC4(bgcolour);

	/* Sometimes, the boxcx value is something really large, like
	   32691. This makes XCopyArea fail with Xvnc. The code below
	   is a quick fix. */
	if (boxx + boxcx > This->width)
		boxcx = This->width - boxx;

	if (boxcx > 1)
	{
		FUNC1(boxx, boxy, boxcx, boxcy);
	}
	else if (mixmode == MIX_OPAQUE)
	{
		FUNC1(clipx, clipy, clipcx, clipcy);
	}

	FUNC4(fgcolour);
	FUNC3(bgcolour);
	FUNC6(This->display, This->xwin.gc, FillStippled);

	/* Paint text, character by character */
	for (i = 0; i < length;)
	{
		switch (text[i])
		{
			case 0xff:
				/* At least two bytes needs to follow */
				if (i + 3 > length)
				{
					FUNC10("Skipping short 0xff command:");
					for (j = 0; j < length; j++)
						FUNC9(stderr, "%02x ", text[j]);
					FUNC9(stderr, "\n");
					i = length = 0;
					break;
				}
				FUNC8(This, text[i + 1], text, text[i + 2]);
				i += 3;
				length -= i;
				/* this will move pointer from start to first character after FF command */
				text = &(text[i]);
				i = 0;
				break;

			case 0xfe:
				/* At least one byte needs to follow */
				if (i + 2 > length)
				{
					FUNC10("Skipping short 0xfe command:");
					for (j = 0; j < length; j++)
						FUNC9(stderr, "%02x ", text[j]);
					FUNC9(stderr, "\n");
					i = length = 0;
					break;
				}
				entry = FUNC7(This, text[i + 1]);
				if (entry->data != NULL)
				{
					if ((((uint8 *) (entry->data))[1] == 0)
					    && (!(flags & TEXT2_IMPLICIT_X)) && (i + 2 < length))
					{
						if (flags & TEXT2_VERTICAL)
							y += text[i + 2];
						else
							x += text[i + 2];
					}
					for (j = 0; j < entry->size; j++)
						FUNC0(((uint8 *) (entry->data)), j);
				}
				if (i + 2 < length)
					i += 3;
				else
					i += 2;
				length -= i;
				/* this will move pointer from start to first character after FE command */
				text = &(text[i]);
				i = 0;
				break;

			default:
				FUNC0(text, i);
				i++;
				break;
		}
	}

	FUNC6(This->display, This->xwin.gc, FillSolid);

	if (This->ownbackstore)
	{
		if (boxcx > 1)
		{
			FUNC5(This->display, This->xwin.backstore, This->wnd, This->xwin.gc, boxx,
				  boxy, boxcx, boxcy, boxx, boxy);
			FUNC2(XCopyArea,
						(This->display, This->xwin.backstore, sw->wnd, This->xwin.gc,
						 boxx, boxy,
						 boxcx, boxcy,
						 boxx - sw->xoffset, boxy - sw->yoffset));
		}
		else
		{
			FUNC5(This->display, This->xwin.backstore, This->wnd, This->xwin.gc, clipx,
				  clipy, clipcx, clipcy, clipx, clipy);
			FUNC2(XCopyArea,
						(This->display, This->xwin.backstore, sw->wnd, This->xwin.gc,
						 clipx, clipy,
						 clipcx, clipcy, clipx - sw->xoffset,
						 clipy - sw->yoffset));
		}
	}
}