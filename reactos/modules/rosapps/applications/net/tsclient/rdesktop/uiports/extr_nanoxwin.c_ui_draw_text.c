
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int size; scalar_t__ data; } ;
typedef int FONTGLYPH ;
typedef TYPE_1__ DATABLOB ;
typedef int BRUSH ;


 int COLOR16TO32 (int) ;
 int DO_GLYPH (int*,int) ;
 int GR_MODE_COPY ;
 int GrFillRect (int ,int ,int,int,int,int) ;
 int GrSetGCForeground (int ,int) ;
 int GrSetGCMode (int ,int ) ;
 int GrSetGCUseBackground (int ,int ) ;
 int MIX_OPAQUE ;
 int TEXT2_IMPLICIT_X ;
 int TEXT2_VERTICAL ;
 TYPE_1__* cache_get_text (int) ;
 int cache_put_text (int,int*,int) ;
 int error (char*) ;
 int exit (int) ;
 int g_bpp ;
 int g_gc ;
 int g_server_bpp ;
 int g_width ;
 int g_wnd ;

void ui_draw_text(uint8 font, uint8 flags, uint8 opcode, int mixmode,
                  int x, int y,
                  int clipx, int clipy, int clipcx, int clipcy,
                  int boxx, int boxy, int boxcx, int boxcy, BRUSH * brush,
                  int bgcolor, int fgcolor, uint8 * text, uint8 length)
{
  FONTGLYPH * glyph;
  int i, j, xyoffset, x1, y1;
  DATABLOB * entry;

  GrSetGCMode(g_gc, GR_MODE_COPY);
  GrSetGCUseBackground(g_gc, 0);
  if (g_server_bpp == 16 && g_bpp == 32)
  {
    fgcolor = COLOR16TO32(fgcolor);
    bgcolor = COLOR16TO32(bgcolor);
  }
  GrSetGCForeground(g_gc, bgcolor);
  if (boxx + boxcx > g_width)
  {
    boxcx = g_width - boxx;
  }
  if (boxcx > 1)
  {
    GrFillRect(g_wnd, g_gc, boxx, boxy, boxcx, boxcy);
  }
  else if (mixmode == MIX_OPAQUE)
  {
    GrFillRect(g_wnd, g_gc, clipx, clipy, clipcx, clipcy);
  }
  GrSetGCForeground(g_gc, fgcolor);

  for (i = 0; i < length;)
  {
    switch (text[i])
    {
      case 0xff:
        if (i + 2 < length)
        {
          cache_put_text(text[i + 1], text, text[i + 2]);
        }
        else
        {
          error("this shouldn't be happening\n");
          exit(1);
        }


        length -= i + 3;
        text = &(text[i + 3]);
        i = 0;
        break;
      case 0xfe:
        entry = cache_get_text(text[i + 1]);
        if (entry != ((void*)0))
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
            DO_GLYPH(((uint8 *) (entry->data)), j);
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


        text = &(text[i]);
        i = 0;
        break;
      default:
        DO_GLYPH(text, i);
        i++;
        break;
    }
  }
}
