#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int dmBitsPerPel; unsigned int dmPelsWidth; unsigned int dmPelsHeight; int dmFields; } ;
typedef  TYPE_1__ DEVMODE ;

/* Variables and functions */
 int /*<<< orphan*/  CDS_FULLSCREEN ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  DISP_CHANGE_BADMODE 131 
#define  DISP_CHANGE_FAILED 130 
#define  DISP_CHANGE_RESTART 129 
#define  DISP_CHANGE_SUCCESSFUL 128 
 int DM_BITSPERPEL ; 
 int DM_PELSHEIGHT ; 
 int DM_PELSWIDTH ; 
 int FUNC1 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FALSE ; 
 int /*<<< orphan*/  MB_ICONERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stbwingraph_primary_window ; 

int FUNC4(unsigned int w, unsigned int h, unsigned int bits, int use_message_box)
{
   DEVMODE mode;
   int res;
   
   int i, tries=0;
   for (i=0; ; ++i) {
      int success = FUNC1(NULL, i, &mode);
      if (!success) break;
      if (mode.dmBitsPerPel == bits && mode.dmPelsWidth == w && mode.dmPelsHeight == h) {
         ++tries;
         success = FUNC0(&mode, CDS_FULLSCREEN); 
         if (success == DISP_CHANGE_SUCCESSFUL) {
            FUNC3();
            return TRUE;
         }
         break;
      }
   }

   if (!tries) {
      if (use_message_box)
         FUNC2(stbwingraph_primary_window, MB_ICONERROR, NULL, "The resolution %d x %d x %d-bits is not supported.", w, h, bits);
      return FALSE;
   }

   // we tried but failed, so try explicitly doing it without specifying refresh rate

   // Win95 support logic
   mode.dmBitsPerPel = bits; 
   mode.dmPelsWidth = w; 
   mode.dmPelsHeight = h; 
   mode.dmFields = DM_BITSPERPEL | DM_PELSWIDTH | DM_PELSHEIGHT; 

   res = FUNC0(&mode, CDS_FULLSCREEN);

   switch (res) {
      case DISP_CHANGE_SUCCESSFUL:
         FUNC3();
         return TRUE;

      case DISP_CHANGE_RESTART:
         if (use_message_box)
            FUNC2(stbwingraph_primary_window, MB_ICONERROR, NULL, "Please set your desktop to %d-bit color and then try again.");
         return FALSE;

      case DISP_CHANGE_FAILED:
         if (use_message_box)
            FUNC2(stbwingraph_primary_window, MB_ICONERROR, NULL, "The hardware failed to change modes.");
         return FALSE;

      case DISP_CHANGE_BADMODE:
         if (use_message_box)
            FUNC2(stbwingraph_primary_window, MB_ICONERROR, NULL, "The resolution %d x %d x %d-bits is not supported.", w, h, bits);
         return FALSE;

      default:
         if (use_message_box)
            FUNC2(stbwingraph_primary_window, MB_ICONERROR, NULL, "An unknown error prevented a change to a %d x %d x %d-bit display.", w, h, bits);
         return FALSE;
   }
}