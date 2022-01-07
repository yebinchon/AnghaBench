
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ depth; int bits_per_pixel; int visualid; } ;
typedef TYPE_1__ XVisualInfo ;
typedef TYPE_1__ XPixmapFormatValues ;
typedef int Visual ;
struct TYPE_11__ {scalar_t__ depth; } ;
struct TYPE_12__ {int screen; int shmcode; int useshm; int bitsperpixel; TYPE_3__ visual; int * display; scalar_t__ colormap; } ;
typedef int Display ;


 int VisualIDMask ;
 int XFree (TYPE_1__*) ;
 TYPE_1__* XGetVisualInfo (int *,int ,TYPE_1__*,int*) ;
 TYPE_1__* XListPixmapFormats (int *,int*) ;
 scalar_t__ XQueryExtension (int *,char*,int*,int*,int*) ;
 int XSetErrorHandler (int ) ;
 scalar_t__ XShmQueryExtension (int *) ;
 int XVisualIDFromVisual (int *) ;
 int create_pool () ;
 int fprintf (int ,char*) ;
 TYPE_5__ info ;
 int make_colormap () ;
 int memcpy (TYPE_3__*,TYPE_1__*,int) ;
 int printf (char*,char*) ;
 int select_mode () ;
 int stderr ;
 int ximage_error_handler ;

int
ximage_init(Display *display, int screen, Visual *visual)
{
 XVisualInfo template;
 XVisualInfo *visuals;
 int nvisuals;
 XPixmapFormatValues *formats;
 int nformats;
 int ok;
 int i;
 int major;
 int event;
 int error;

 info.display = display;
 info.screen = screen;
 info.colormap = 0;


 template.visualid = XVisualIDFromVisual(visual);
 visuals = XGetVisualInfo(display, VisualIDMask, &template, &nvisuals);
 if (nvisuals != 1) {
  fprintf(stderr, "Visual not found!\n");
  XFree(visuals);
  return 0;
 }
 memcpy(&info.visual, visuals, sizeof (XVisualInfo));
 XFree(visuals);


 formats = XListPixmapFormats(info.display, &nformats);
 for (i = 0; i < nformats; i++) {
  if (formats[i].depth == info.visual.depth) {
   info.bitsperpixel = formats[i].bits_per_pixel;
   break;
  }
 }
 XFree(formats);
 if (i == nformats) {
  fprintf(stderr, "PixmapFormat not found!\n");
  return 0;
 }


 select_mode();


 make_colormap();


 if (XQueryExtension(display, "MIT-SHM", &major, &event, &error) &&
  XShmQueryExtension(display))
  info.shmcode = major;


 XSetErrorHandler(ximage_error_handler);


 info.useshm = 1;
 ok = create_pool();
 if (!ok)
  return 0;





 return 1;
}
