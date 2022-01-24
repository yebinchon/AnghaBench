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

/* Variables and functions */
 scalar_t__ BITMAP_H ; 
 scalar_t__ BITMAP_W ; 
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  GL_SRC_ALPHA ; 
 scalar_t__ black_on_white ; 
 int /*<<< orphan*/  FUNC0 (int,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 size_t font ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ integer_align ; 
 int /*<<< orphan*/  FUNC10 (float,int,size_t,char*) ; 
 int rotate_t ; 
 scalar_t__ rotating ; 
 int* sf ; 
 scalar_t__ show_tex ; 
 int translate_t ; 
 scalar_t__ translating ; 

void FUNC11(void)
{
   int sfont = sf[font];
   float x = 20;
   FUNC5(GL_BLEND);
   FUNC3(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

   if (black_on_white)
      FUNC4(0,0,0);
   else
      FUNC4(1,1,1);


   FUNC10(80, 30, sfont, "Controls:");
   FUNC10(100, 60, sfont, "S: toggle font size");
   FUNC10(100, 85, sfont, "O: toggle oversampling");
   FUNC10(100,110, sfont, "T: toggle translation");
   FUNC10(100,135, sfont, "R: toggle rotation");
   FUNC10(100,160, sfont, "P: toggle pixel-snap (only non-oversampled)");
   FUNC10(100,185, sfont, "G: toggle srgb gamma-correction");
   if (black_on_white)
      FUNC10(100,210, sfont, "B: toggle to white-on-black");
   else
      FUNC10(100,210, sfont, "B: toggle to black-on-white");
   FUNC10(100,235, sfont, "V: view font texture");

   FUNC10(80, 300, sfont, "Current font:");

   if (!show_tex) {
      if (font < 3)
         FUNC10(100, 350, sfont, "Font height: 24 pixels");
      else
         FUNC10(100, 350, sfont, "Font height: 14 pixels");
   }

   if (font%3==1)
      FUNC10(100, 325, sfont, "2x2 oversampled text at 1:1");
   else if (font%3 == 2)
      FUNC10(100, 325, sfont, "3x1 oversampled text at 1:1");
   else if (integer_align)
      FUNC10(100, 325, sfont, "1:1 text, one texel = one pixel, snapped to integer coordinates");
   else
      FUNC10(100, 325, sfont, "1:1 text, one texel = one pixel");

   if (show_tex) {
      FUNC2(GL_QUADS);
      FUNC0(200,400, 200+BITMAP_W,300+BITMAP_H, 0,0,1,1);
      FUNC6();
   } else {
      FUNC7(GL_MODELVIEW);
      FUNC9(200,350,0);

      if (translating)
         x += FUNC1(translate_t*8,30);

      if (rotating) {
         FUNC9(100,150,0);
         FUNC8(rotate_t*2,0,0,1);
         FUNC9(-100,-150,0);
      }
      FUNC10(x,100, font, "This is a test");
      FUNC10(x,130, font, "Now is the time for all good men to come to the aid of their country.");
      FUNC10(x,160, font, "The quick brown fox jumps over the lazy dog.");
      FUNC10(x,190, font, "0123456789");
   }
}