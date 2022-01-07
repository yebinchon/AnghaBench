
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int depth; int red_mask; int green_mask; int blue_mask; int bits_per_pixel; int colormap_size; TYPE_1__* visual; int class; } ;
typedef TYPE_3__ XVisualInfo ;
typedef TYPE_3__ XPixmapFormatValues ;
struct TYPE_12__ {int no_translate_image; int compatible_arch; int depth; int bpp; TYPE_1__* visual; int blue_shift_l; int blue_shift_r; int green_shift_l; int green_shift_r; int red_shift_l; int red_shift_r; int host_be; int xserver_be; } ;
struct TYPE_14__ {int server_depth; TYPE_2__ xwin; void* owncolmap; int display; } ;
struct TYPE_11__ {int blue_mask; int green_mask; int red_mask; } ;
typedef TYPE_5__ RDPCLIENT ;
typedef void* BOOL ;


 int DefaultScreen (int ) ;
 int DisplayPlanes (int ,int ) ;
 void* False ;
 int PseudoColor ;
 void* True ;
 int TrueColor ;
 int VisualClassMask ;
 int VisualColormapSizeMask ;
 int VisualDepthMask ;
 int XCloseDisplay (int ) ;
 int XFree (TYPE_3__*) ;
 TYPE_3__* XGetVisualInfo (int ,int,TYPE_3__*,int*) ;
 TYPE_3__* XListPixmapFormats (int ,int*) ;
 unsigned int calculate_mask_weight (int) ;
 int calculate_shifts (int ,int *,int *) ;
 int error (char*) ;

__attribute__((used)) static BOOL
select_visual(RDPCLIENT * This)
{
 XPixmapFormatValues *pfm;
 int pixmap_formats_count, visuals_count;
 XVisualInfo *vmatches = ((void*)0);
 XVisualInfo template;
 int i;
 unsigned red_weight, blue_weight, green_weight;

 red_weight = blue_weight = green_weight = 0;

 if (This->server_depth == -1)
 {
  This->server_depth = DisplayPlanes(This->display, DefaultScreen(This->display));
 }

 pfm = XListPixmapFormats(This->display, &pixmap_formats_count);
 if (pfm == ((void*)0))
 {
  error("Unable to get list of pixmap formats from display.\n");
  XCloseDisplay(This->display);
  return False;
 }


 template.class = TrueColor;
 vmatches = XGetVisualInfo(This->display, VisualClassMask, &template, &visuals_count);
 This->xwin.visual = ((void*)0);
 This->xwin.no_translate_image = False;
 This->xwin.compatible_arch = False;
 if (vmatches != ((void*)0))
 {
  for (i = 0; i < visuals_count; ++i)
  {
   XVisualInfo *visual_info = &vmatches[i];
   BOOL can_translate_to_bpp = False;
   int j;



   if (!This->xwin.xserver_be && (((visual_info->depth == 15) &&

            (visual_info->red_mask == 0x7c00) &&
            (visual_info->green_mask == 0x3e0) &&
            (visual_info->blue_mask == 0x1f)) ||
           ((visual_info->depth == 16) &&

            (visual_info->red_mask == 0xf800) &&
            (visual_info->green_mask == 0x7e0) &&
            (visual_info->blue_mask == 0x1f)) ||
           ((visual_info->depth == 24) &&

            (visual_info->red_mask == 0xff0000) &&
            (visual_info->green_mask == 0xff00) &&
            (visual_info->blue_mask == 0xff))))
   {
    This->xwin.visual = visual_info->visual;
    This->xwin.depth = visual_info->depth;
    This->xwin.compatible_arch = !This->xwin.host_be;
    This->xwin.no_translate_image = (visual_info->depth == This->server_depth);
    if (This->xwin.no_translate_image)

     break;
   }
   else
   {
    This->xwin.compatible_arch = False;
   }

   if (visual_info->depth > 24)
   {




    continue;
   }



   for (j = 0; j < pixmap_formats_count; ++j)
   {
    if (pfm[j].depth == visual_info->depth)
    {
     if ((pfm[j].bits_per_pixel == 16) ||
         (pfm[j].bits_per_pixel == 24) ||
         (pfm[j].bits_per_pixel == 32))
     {
      can_translate_to_bpp = True;
     }
     break;
    }
   }




   if (can_translate_to_bpp)
   {
    unsigned vis_red_weight =
     calculate_mask_weight(visual_info->red_mask);
    unsigned vis_green_weight =
     calculate_mask_weight(visual_info->green_mask);
    unsigned vis_blue_weight =
     calculate_mask_weight(visual_info->blue_mask);
    if ((vis_red_weight >= red_weight)
        && (vis_green_weight >= green_weight)
        && (vis_blue_weight >= blue_weight))
    {
     red_weight = vis_red_weight;
     green_weight = vis_green_weight;
     blue_weight = vis_blue_weight;
     This->xwin.visual = visual_info->visual;
     This->xwin.depth = visual_info->depth;
    }
   }
  }
  XFree(vmatches);
 }

 if (This->xwin.visual != ((void*)0))
 {
  This->owncolmap = False;
  calculate_shifts(This->xwin.visual->red_mask, &This->xwin.red_shift_r, &This->xwin.red_shift_l);
  calculate_shifts(This->xwin.visual->green_mask, &This->xwin.green_shift_r, &This->xwin.green_shift_l);
  calculate_shifts(This->xwin.visual->blue_mask, &This->xwin.blue_shift_r, &This->xwin.blue_shift_l);
 }
 else
 {
  template.class = PseudoColor;
  template.depth = 8;
  template.colormap_size = 256;
  vmatches =
   XGetVisualInfo(This->display,
           VisualClassMask | VisualDepthMask | VisualColormapSizeMask,
           &template, &visuals_count);
  if (vmatches == ((void*)0))
  {
   error("No usable TrueColor or PseudoColor visuals on this display.\n");
   XCloseDisplay(This->display);
   XFree(pfm);
   return False;
  }


  This->owncolmap = True;
  This->xwin.visual = vmatches[0].visual;
  This->xwin.depth = vmatches[0].depth;
 }

 This->xwin.bpp = 0;
 for (i = 0; i < pixmap_formats_count; ++i)
 {
  XPixmapFormatValues *pf = &pfm[i];
  if (pf->depth == This->xwin.depth)
  {
   This->xwin.bpp = pf->bits_per_pixel;

   if (This->xwin.no_translate_image)
   {
    switch (This->server_depth)
    {
     case 15:
     case 16:
      if (This->xwin.bpp != 16)
       This->xwin.no_translate_image = False;
      break;
     case 24:



      if (This->xwin.bpp != 24)
       This->xwin.no_translate_image = False;
      break;
     default:
      This->xwin.no_translate_image = False;
      break;
    }
   }




   break;
  }
 }
 XFree(pfm);
 pfm = ((void*)0);
 return True;
}
