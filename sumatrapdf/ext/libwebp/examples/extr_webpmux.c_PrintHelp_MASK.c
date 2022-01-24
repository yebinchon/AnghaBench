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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void) {
  FUNC0("Usage: webpmux -get GET_OPTIONS INPUT -o OUTPUT\n");
  FUNC0("       webpmux -set SET_OPTIONS INPUT -o OUTPUT\n");
  FUNC0("       webpmux -duration DURATION_OPTIONS [-duration ...]\n");
  FUNC0("               INPUT -o OUTPUT\n");
  FUNC0("       webpmux -strip STRIP_OPTIONS INPUT -o OUTPUT\n");
  FUNC0("       webpmux -frame FRAME_OPTIONS [-frame...] [-loop LOOP_COUNT]"
         "\n");
  FUNC0("               [-bgcolor BACKGROUND_COLOR] -o OUTPUT\n");
  FUNC0("       webpmux -info INPUT\n");
  FUNC0("       webpmux [-h|-help]\n");
  FUNC0("       webpmux -version\n");
  FUNC0("       webpmux argument_file_name\n");

  FUNC0("\n");
  FUNC0("GET_OPTIONS:\n");
  FUNC0(" Extract relevant data:\n");
  FUNC0("   icc       get ICC profile\n");
  FUNC0("   exif      get EXIF metadata\n");
  FUNC0("   xmp       get XMP metadata\n");
  FUNC0("   frame n   get nth frame\n");

  FUNC0("\n");
  FUNC0("SET_OPTIONS:\n");
  FUNC0(" Set color profile/metadata:\n");
  FUNC0("   icc  file.icc     set ICC profile\n");
  FUNC0("   exif file.exif    set EXIF metadata\n");
  FUNC0("   xmp  file.xmp     set XMP metadata\n");
  FUNC0("   where:    'file.icc' contains the ICC profile to be set,\n");
  FUNC0("             'file.exif' contains the EXIF metadata to be set\n");
  FUNC0("             'file.xmp' contains the XMP metadata to be set\n");

  FUNC0("\n");
  FUNC0("DURATION_OPTIONS:\n");
  FUNC0(" Set duration of selected frames:\n");
  FUNC0("   duration            set duration for each frames\n");
  FUNC0("   duration,frame      set duration of a particular frame\n");
  FUNC0("   duration,start,end  set duration of frames in the\n");
  FUNC0("                        interval [start,end])\n");
  FUNC0("   where: 'duration' is the duration in milliseconds\n");
  FUNC0("          'start' is the start frame index\n");
  FUNC0("          'end' is the inclusive end frame index\n");
  FUNC0("           The special 'end' value '0' means: last frame.\n");

  FUNC0("\n");
  FUNC0("STRIP_OPTIONS:\n");
  FUNC0(" Strip color profile/metadata:\n");
  FUNC0("   icc       strip ICC profile\n");
  FUNC0("   exif      strip EXIF metadata\n");
  FUNC0("   xmp       strip XMP metadata\n");

  FUNC0("\n");
  FUNC0("FRAME_OPTIONS(i):\n");
  FUNC0(" Create animation:\n");
  FUNC0("   file_i +di+[xi+yi[+mi[bi]]]\n");
  FUNC0("   where:    'file_i' is the i'th animation frame (WebP format),\n");
  FUNC0("             'di' is the pause duration before next frame,\n");
  FUNC0("             'xi','yi' specify the image offset for this frame,\n");
  FUNC0("             'mi' is the dispose method for this frame (0 or 1),\n");
  FUNC0("             'bi' is the blending method for this frame (+b or -b)"
         "\n");

  FUNC0("\n");
  FUNC0("LOOP_COUNT:\n");
  FUNC0(" Number of times to repeat the animation.\n");
  FUNC0(" Valid range is 0 to 65535 [Default: 0 (infinite)].\n");

  FUNC0("\n");
  FUNC0("BACKGROUND_COLOR:\n");
  FUNC0(" Background color of the canvas.\n");
  FUNC0("  A,R,G,B\n");
  FUNC0("  where:    'A', 'R', 'G' and 'B' are integers in the range 0 to 255 "
         "specifying\n");
  FUNC0("            the Alpha, Red, Green and Blue component values "
         "respectively\n");
  FUNC0("            [Default: 255,255,255,255]\n");

  FUNC0("\nINPUT & OUTPUT are in WebP format.\n");

  FUNC0("\nNote: The nature of EXIF, XMP and ICC data is not checked");
  FUNC0(" and is assumed to be\nvalid.\n");
  FUNC0("\nNote: if a single file name is passed as the argument, the "
         "arguments will be\n");
  FUNC0("tokenized from this file. The file name must not start with "
         "the character '-'.\n");
}