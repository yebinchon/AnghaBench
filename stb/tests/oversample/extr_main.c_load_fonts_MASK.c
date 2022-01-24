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
typedef  int /*<<< orphan*/  stbtt_pack_context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_H ; 
 int /*<<< orphan*/  BITMAP_W ; 
 int /*<<< orphan*/  GL_ALPHA ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 scalar_t__* chardata ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  font_tex ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * scale ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 char* stb_wingraph_commandline ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * temp_bitmap ; 
 int /*<<< orphan*/  ttf_buffer ; 

void FUNC13(void)
{
   stbtt_pack_context pc;
   int i;
   FILE *f;
   char filename[256];
   char *win = FUNC3("windir");
   if (win == NULL) win = FUNC3("SystemRoot");

   f = FUNC1(stb_wingraph_commandline, "rb");
   if (!f) {
      if (win == NULL)
         FUNC8(filename, "arial.ttf", win);
      else
         FUNC8(filename, "%s/fonts/arial.ttf", win);
      f = FUNC1(filename, "rb");
      if (!f) FUNC0(0);
   }

   FUNC2(ttf_buffer, 1, 1<<25, f);

   FUNC9(&pc, temp_bitmap[0], BITMAP_W, BITMAP_H, 0, 1, NULL);
   for (i=0; i < 2; ++i) {
      FUNC12(&pc, 1, 1);
      FUNC11(&pc, ttf_buffer, 0, scale[i], 32, 95, chardata[i*3+0]+32);
      FUNC12(&pc, 2, 2);
      FUNC11(&pc, ttf_buffer, 0, scale[i], 32, 95, chardata[i*3+1]+32);
      FUNC12(&pc, 3, 1);
      FUNC11(&pc, ttf_buffer, 0, scale[i], 32, 95, chardata[i*3+2]+32);
   }
   FUNC10(&pc);

   FUNC5(1, &font_tex);
   FUNC4(GL_TEXTURE_2D, font_tex);
   FUNC6(GL_TEXTURE_2D, 0, GL_ALPHA, BITMAP_W, BITMAP_H, 0, GL_ALPHA, GL_UNSIGNED_BYTE, temp_bitmap);
   FUNC7(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
   FUNC7(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
}