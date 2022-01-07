
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int stbwingraph_hwnd ;
typedef int pfd ;
struct TYPE_5__ {int member_0; int nVersion; int dwFlags; int cColorBits; int cAlphaBits; int cDepthBits; int cStencilBits; int cAccumBits; int iPixelType; int dwLayerMask; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef int HDC ;


 int ChoosePixelFormat (int ,TYPE_1__*) ;
 int DescribePixelFormat (int ,int,int,TYPE_1__*) ;
 int FALSE ;
 int GetDC (int ) ;
 int PFD_DOUBLEBUFFER ;
 int PFD_DRAW_TO_WINDOW ;
 int PFD_MAIN_PLANE ;
 int PFD_SUPPORT_OPENGL ;
 int PFD_TYPE_RGBA ;
 int SetPixelFormat (int ,int,TYPE_1__*) ;
 int TRUE ;

int stbwingraph_SetPixelFormat(stbwingraph_hwnd win, int color_bits, int alpha_bits, int depth_bits, int stencil_bits, int accum_bits)
{
   HDC dc = GetDC(win);
   PIXELFORMATDESCRIPTOR pfd = { sizeof(pfd) };
   int pixel_format;

   pfd.nVersion = 1;
   pfd.dwFlags = PFD_SUPPORT_OPENGL | PFD_DRAW_TO_WINDOW | PFD_DOUBLEBUFFER;
   pfd.dwLayerMask = PFD_MAIN_PLANE;
   pfd.iPixelType = PFD_TYPE_RGBA;
   pfd.cColorBits = color_bits;
   pfd.cAlphaBits = alpha_bits;
   pfd.cDepthBits = depth_bits;
   pfd.cStencilBits = stencil_bits;
   pfd.cAccumBits = accum_bits;

   pixel_format = ChoosePixelFormat(dc, &pfd);
   if (!pixel_format) return FALSE;

   if (!DescribePixelFormat(dc, pixel_format, sizeof(PIXELFORMATDESCRIPTOR), &pfd))
      return FALSE;
   SetPixelFormat(dc, pixel_format, &pfd);

   return TRUE;
}
