
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int dmBitsPerPel; unsigned int dmPelsWidth; unsigned int dmPelsHeight; int dmFields; } ;
typedef TYPE_1__ DEVMODE ;


 int CDS_FULLSCREEN ;
 int ChangeDisplaySettings (TYPE_1__*,int ) ;




 int DM_BITSPERPEL ;
 int DM_PELSHEIGHT ;
 int DM_PELSWIDTH ;
 int EnumDisplaySettings (int *,int,TYPE_1__*) ;
 int FALSE ;
 int MB_ICONERROR ;
 int TRUE ;
 int stbwingraph_MessageBox (int ,int ,int *,char*,...) ;
 int stbwingraph_RegisterResetResolution () ;
 int stbwingraph_primary_window ;

int stbwingraph_ChangeResolution(unsigned int w, unsigned int h, unsigned int bits, int use_message_box)
{
   DEVMODE mode;
   int res;

   int i, tries=0;
   for (i=0; ; ++i) {
      int success = EnumDisplaySettings(((void*)0), i, &mode);
      if (!success) break;
      if (mode.dmBitsPerPel == bits && mode.dmPelsWidth == w && mode.dmPelsHeight == h) {
         ++tries;
         success = ChangeDisplaySettings(&mode, CDS_FULLSCREEN);
         if (success == 128) {
            stbwingraph_RegisterResetResolution();
            return TRUE;
         }
         break;
      }
   }

   if (!tries) {
      if (use_message_box)
         stbwingraph_MessageBox(stbwingraph_primary_window, MB_ICONERROR, ((void*)0), "The resolution %d x %d x %d-bits is not supported.", w, h, bits);
      return FALSE;
   }




   mode.dmBitsPerPel = bits;
   mode.dmPelsWidth = w;
   mode.dmPelsHeight = h;
   mode.dmFields = DM_BITSPERPEL | DM_PELSWIDTH | DM_PELSHEIGHT;

   res = ChangeDisplaySettings(&mode, CDS_FULLSCREEN);

   switch (res) {
      case 128:
         stbwingraph_RegisterResetResolution();
         return TRUE;

      case 129:
         if (use_message_box)
            stbwingraph_MessageBox(stbwingraph_primary_window, MB_ICONERROR, ((void*)0), "Please set your desktop to %d-bit color and then try again.");
         return FALSE;

      case 130:
         if (use_message_box)
            stbwingraph_MessageBox(stbwingraph_primary_window, MB_ICONERROR, ((void*)0), "The hardware failed to change modes.");
         return FALSE;

      case 131:
         if (use_message_box)
            stbwingraph_MessageBox(stbwingraph_primary_window, MB_ICONERROR, ((void*)0), "The resolution %d x %d x %d-bits is not supported.", w, h, bits);
         return FALSE;

      default:
         if (use_message_box)
            stbwingraph_MessageBox(stbwingraph_primary_window, MB_ICONERROR, ((void*)0), "An unknown error prevented a change to a %d x %d x %d-bit display.", w, h, bits);
         return FALSE;
   }
}
