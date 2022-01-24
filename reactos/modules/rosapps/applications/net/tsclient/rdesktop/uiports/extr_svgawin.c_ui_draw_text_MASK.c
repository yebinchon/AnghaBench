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
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int MIX_OPAQUE ; 
 int TEXT2_IMPLICIT_X ; 
 int TEXT2_VERTICAL ; 
 int /*<<< orphan*/  True ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  mousex ; 
 int /*<<< orphan*/  mousey ; 

void FUNC9(uint8 font, uint8 flags, uint8 opcode, int mixmode,
                  int x, int y,
                  int clipx, int clipy, int clipcx, int clipcy,
                  int boxx, int boxy, int boxcx, int boxcy, BRUSH * brush,
                  int bgcolour, int fgcolour, uint8* text, uint8 length)
{
  int i;
  int j;
  int xyoffset;
  DATABLOB* entry;
  FONTGLYPH* glyph;

  if (boxcx > 1)
  {
    if (FUNC4(boxx, boxy, boxcx, boxcy))
      FUNC5(mousex, mousey);
    FUNC8(boxx, boxy, boxcx, boxcy, bgcolour, 0xc);
  }
  else
  {
    if (FUNC4(clipx, clipy, clipcx, clipcy))
      FUNC5(mousex, mousey);
    if (mixmode == MIX_OPAQUE)
      FUNC8(clipx, clipy, clipcx, clipcy, bgcolour, 0xc);
  }

  /* Paint text, character by character */
  for (i = 0; i < length;)
  {
    switch (text[i])
    {
      case 0xff:
        if (i + 2 < length)
          FUNC2(text[i + 1], text, text[i + 2]);
        else
        {
          FUNC6("this shouldn't be happening\n");
          FUNC7(1);
        }
        /* this will move pointer from start to first character after FF command */
        length -= i + 3;
        text = &(text[i + 3]);
        i = 0;
        break;

      case 0xfe:
        entry = FUNC1(text[i + 1]);
        if (entry != NULL)
        {
          if ((((uint8 *) (entry->data))[1] == 0) && (!(flags & TEXT2_IMPLICIT_X)))
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
  if (boxcx > 1)
    FUNC3(boxx, boxy, boxcx, boxcy, True);
  else
    FUNC3(clipx, clipy, clipcx, clipcy, True);
}