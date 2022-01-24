#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int w; int h; int eflags; int line_size; int start_x; int start_y; int max_x; int max_y; int cur_x; int cur_y; int lflags; int step; int parse; int transparent; int flags; int** pal; int /*<<< orphan*/ * color_table; scalar_t__ lpal; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ stbi_gif ;
typedef  int /*<<< orphan*/  stbi__uint8 ;
typedef  int stbi__int32 ;
typedef  int /*<<< orphan*/  stbi ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static stbi__uint8 *FUNC11(stbi *s, stbi_gif *g, int *comp, int req_comp)
{
   int i;
   stbi__uint8 *old_out = 0;

   if (g->out == 0) {
      if (!FUNC8(s, g, comp,0))     return 0; // failure_reason set by stbi_gif_header
      g->out = (stbi__uint8 *) FUNC4(4 * g->w * g->h);
      if (g->out == 0)                      return FUNC1("outofmem", "Out of memory");
      FUNC7(g);
   } else {
      // animated-gif-only path
      if (((g->eflags & 0x1C) >> 2) == 3) {
         old_out = g->out;
         g->out = (stbi__uint8 *) FUNC4(4 * g->w * g->h);
         if (g->out == 0)                   return FUNC1("outofmem", "Out of memory");
         FUNC5(g->out, old_out, g->w*g->h*4);
      }
   }
    
   for (;;) {
      switch (FUNC3(s)) {
         case 0x2C: /* Image Descriptor */
         {
            stbi__int32 x, y, w, h;
            stbi__uint8 *o;

            x = FUNC2(s);
            y = FUNC2(s);
            w = FUNC2(s);
            h = FUNC2(s);
            if (((x + w) > (g->w)) || ((y + h) > (g->h)))
               return FUNC1("bad Image Descriptor", "Corrupt GIF");

            g->line_size = g->w * 4;
            g->start_x = x * 4;
            g->start_y = y * g->line_size;
            g->max_x   = g->start_x + w * 4;
            g->max_y   = g->start_y + h * g->line_size;
            g->cur_x   = g->start_x;
            g->cur_y   = g->start_y;

            g->lflags = FUNC3(s);

            if (g->lflags & 0x40) {
               g->step = 8 * g->line_size; // first interlaced spacing
               g->parse = 3;
            } else {
               g->step = g->line_size;
               g->parse = 0;
            }

            if (g->lflags & 0x80) {
               FUNC9(s,g->lpal, 2 << (g->lflags & 7), g->eflags & 0x01 ? g->transparent : -1);
               g->color_table = (stbi__uint8 *) g->lpal;       
            } else if (g->flags & 0x80) {
               for (i=0; i < 256; ++i)  // @OPTIMIZE: reset only the previous transparent
                  g->pal[i][3] = 255; 
               if (g->transparent >= 0 && (g->eflags & 0x01))
                  g->pal[g->transparent][3] = 0;
               g->color_table = (stbi__uint8 *) g->pal;
            } else
               return FUNC1("missing color table", "Corrupt GIF");
   
            o = FUNC10(s, g);
            if (o == NULL) return NULL;

            if (req_comp && req_comp != 4)
               o = FUNC0(o, 4, req_comp, g->w, g->h);
            return o;
         }

         case 0x21: // Comment Extension.
         {
            int len;
            if (FUNC3(s) == 0xF9) { // Graphic Control Extension.
               len = FUNC3(s);
               if (len == 4) {
                  g->eflags = FUNC3(s);
                  FUNC2(s); // delay
                  g->transparent = FUNC3(s);
               } else {
                  FUNC6(s, len);
                  break;
               }
            }
            while ((len = FUNC3(s)) != 0)
               FUNC6(s, len);
            break;
         }

         case 0x3B: // gif stream termination code
            return (stbi__uint8 *) 1;

         default:
            return FUNC1("unknown code", "Corrupt GIF");
      }
   }
}