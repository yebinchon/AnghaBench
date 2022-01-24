#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_3__ {int size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  FONTGLYPH ;
typedef  TYPE_1__ DATABLOB ;
typedef  int /*<<< orphan*/  BRUSH ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  GR_MODE_COPY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MIX_OPAQUE ; 
 int TEXT2_IMPLICIT_X ; 
 int TEXT2_VERTICAL ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int g_bpp ; 
 int /*<<< orphan*/  g_gc ; 
 int g_server_bpp ; 
 int g_width ; 
 int /*<<< orphan*/  g_wnd ; 

void FUNC10(uint8 font, uint8 flags, uint8 opcode, int mixmode,
                  int x, int y,
                  int clipx, int clipy, int clipcx, int clipcy,
                  int boxx, int boxy, int boxcx, int boxcy, BRUSH * brush,
                  int bgcolor, int fgcolor, uint8 * text, uint8 length)
{
  FONTGLYPH * glyph;
  int i, j, xyoffset, x1, y1;
  DATABLOB * entry;

  FUNC4(g_gc, GR_MODE_COPY);
  FUNC5(g_gc, 0); /* this can be set when gc is created */
  if (g_server_bpp == 16 && g_bpp == 32)
  {
    fgcolor = FUNC0(fgcolor);
    bgcolor = FUNC0(bgcolor);
  }
  FUNC3(g_gc, bgcolor);
  if (boxx + boxcx > g_width)
  {
    boxcx = g_width - boxx;
  }
  if (boxcx > 1)
  {
    FUNC2(g_wnd, g_gc, boxx, boxy, boxcx, boxcy);
  }
  else if (mixmode == MIX_OPAQUE)
  {
    FUNC2(g_wnd, g_gc, clipx, clipy, clipcx, clipcy);
  }
  FUNC3(g_gc, fgcolor);
  /* Paint text, character by character */
  for (i = 0; i < length;)
  {
    switch (text[i])
    {
      case 0xff:
        if (i + 2 < length)
        {
          FUNC7(text[i + 1], text, text[i + 2]);
        }
        else
        {
          FUNC8("this shouldn't be happening\n");
          FUNC9(1);
        }
        /* this will move pointer from start to first character after */
        /* FF command */
        length -= i + 3;
        text = &(text[i + 3]);
        i = 0;
        break;
      case 0xfe:
        entry = FUNC6(text[i + 1]);
        if (entry != NULL)
        {
          if ((((uint8 *) (entry->data))[1] == 0) &&
                                (!(flags & TEXT2_IMPLICIT_X)))
          {
            if (flags & TEXT2_VERTICAL)
            {
              y += text[i + 2];
            }
            else
            {
              x += text[i + 2];
            }
          }
          for (j = 0; j < entry->size; j++)
          {
            FUNC1(((uint8 *) (entry->data)), j);
          }
        }
        if (i + 2 < length)
        {
          i += 3;
        }
        else
        {
          i += 2;
        }
        length -= i;
        /* this will move pointer from start to first character after */
        /* FE command */
        text = &(text[i]);
        i = 0;
        break;
      default:
        FUNC1(text, i);
        i++;
        break;
    }
  }
}