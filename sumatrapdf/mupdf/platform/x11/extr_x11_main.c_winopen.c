
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int flags; char* res_name; char* res_class; void* icon_mask; void* icon_pixmap; } ;
typedef TYPE_1__ XWMHints ;
typedef TYPE_1__ XClassHint ;
struct TYPE_13__ {int ctx; } ;
struct TYPE_12__ {int red; int green; int blue; } ;


 int ButtonPressMask ;
 int ButtonReleaseMask ;
 int ConnectionNumber (int ) ;
 int DefaultColormap (int ,int ) ;
 int DefaultRootWindow (int ) ;
 int DefaultScreen (int ) ;
 int DefaultVisual (int ,int ) ;
 int ExposureMask ;
 int FZ_ERROR_GENERIC ;
 int False ;
 int IconMaskHint ;
 int IconPixmapHint ;
 int InputOutput ;
 int KeyPressMask ;
 void* NET_WM_NAME ;
 void* NET_WM_STATE ;
 void* NET_WM_STATE_FULLSCREEN ;
 scalar_t__ None ;
 int PointerMotionMask ;
 int StructureNotifyMask ;
 void* WM_DELETE_WINDOW ;
 void* WM_RELOAD_PAGE ;
 void* XA_CLIPBOARD ;
 void* XA_TARGETS ;
 void* XA_TIMESTAMP ;
 void* XA_UTF8_STRING ;
 TYPE_1__* XAllocClassHint () ;
 int XAllocColor (int ,int ,TYPE_3__*) ;
 TYPE_1__* XAllocWMHints () ;
 int XC_hand2 ;
 int XC_left_ptr ;
 int XC_watch ;
 int XC_xterm ;
 void* XCreateBitmapFromData (int ,scalar_t__,char*,int ,int ) ;
 void* XCreateFontCursor (int ,int ) ;
 int XCreateGC (int ,scalar_t__,int ,int *) ;
 scalar_t__ XCreateWindow (int ,int ,int,int,int,int,int ,int ,int ,int ,int ,int *) ;
 int XDefineCursor (int ,scalar_t__,void*) ;
 int XFree (TYPE_1__*) ;
 int XInitThreads () ;
 void* XInternAtom (int ,char*,int ) ;
 int XOpenDisplay (int *) ;
 int XSelectInput (int ,scalar_t__,int) ;
 int XSetClassHint (int ,scalar_t__,TYPE_1__*) ;
 int XSetWMHints (int ,scalar_t__,TYPE_1__*) ;
 int XSetWMProtocols (int ,scalar_t__,void**,int) ;
 int XSetWindowColormap (int ,scalar_t__,int ) ;
 int fz_throw (int ,int ,char*) ;
 TYPE_4__ gapp ;
 scalar_t__ mapped ;
 scalar_t__ mupdf_icon_bitmap_16_bits ;
 int mupdf_icon_bitmap_16_height ;
 scalar_t__ mupdf_icon_bitmap_16_mask_bits ;
 int mupdf_icon_bitmap_16_mask_height ;
 int mupdf_icon_bitmap_16_mask_width ;
 int mupdf_icon_bitmap_16_width ;
 int x11fd ;
 TYPE_3__ xbgcolor ;
 void* xcarrow ;
 void* xccaret ;
 void* xchand ;
 void* xcwait ;
 int xdpy ;
 int xgc ;
 void* xicon ;
 int ximage_get_colormap () ;
 int ximage_get_depth () ;
 int ximage_get_visual () ;
 int ximage_init (int ,int ,int ) ;
 void* xmask ;
 int xscr ;
 scalar_t__ xwin ;

__attribute__((used)) static void winopen(void)
{
 XWMHints *wmhints;
 XClassHint *classhint;






 xdpy = XOpenDisplay(((void*)0));
 if (!xdpy)
  fz_throw(gapp.ctx, FZ_ERROR_GENERIC, "cannot open display");

 XA_CLIPBOARD = XInternAtom(xdpy, "CLIPBOARD", False);
 XA_TARGETS = XInternAtom(xdpy, "TARGETS", False);
 XA_TIMESTAMP = XInternAtom(xdpy, "TIMESTAMP", False);
 XA_UTF8_STRING = XInternAtom(xdpy, "UTF8_STRING", False);
 WM_DELETE_WINDOW = XInternAtom(xdpy, "WM_DELETE_WINDOW", False);
 NET_WM_NAME = XInternAtom(xdpy, "_NET_WM_NAME", False);
 NET_WM_STATE = XInternAtom(xdpy, "_NET_WM_STATE", False);
 NET_WM_STATE_FULLSCREEN = XInternAtom(xdpy, "_NET_WM_STATE_FULLSCREEN", False);
 WM_RELOAD_PAGE = XInternAtom(xdpy, "_WM_RELOAD_PAGE", False);

 xscr = DefaultScreen(xdpy);

 ximage_init(xdpy, xscr, DefaultVisual(xdpy, xscr));

 xcarrow = XCreateFontCursor(xdpy, XC_left_ptr);
 xchand = XCreateFontCursor(xdpy, XC_hand2);
 xcwait = XCreateFontCursor(xdpy, XC_watch);
 xccaret = XCreateFontCursor(xdpy, XC_xterm);

 xbgcolor.red = 0x7000;
 xbgcolor.green = 0x7000;
 xbgcolor.blue = 0x7000;

 XAllocColor(xdpy, DefaultColormap(xdpy, xscr), &xbgcolor);

 xwin = XCreateWindow(xdpy, DefaultRootWindow(xdpy),
  10, 10, 200, 100, 0,
  ximage_get_depth(),
  InputOutput,
  ximage_get_visual(),
  0,
  ((void*)0));
 if (xwin == None)
  fz_throw(gapp.ctx, FZ_ERROR_GENERIC, "cannot create window");

 XSetWindowColormap(xdpy, xwin, ximage_get_colormap());
 XSelectInput(xdpy, xwin,
  StructureNotifyMask | ExposureMask | KeyPressMask |
  PointerMotionMask | ButtonPressMask | ButtonReleaseMask);

 mapped = 0;

 xgc = XCreateGC(xdpy, xwin, 0, ((void*)0));

 XDefineCursor(xdpy, xwin, xcarrow);

 wmhints = XAllocWMHints();
 if (wmhints)
 {
  wmhints->flags = IconPixmapHint | IconMaskHint;
  xicon = XCreateBitmapFromData(xdpy, xwin,
   (char*)mupdf_icon_bitmap_16_bits,
   mupdf_icon_bitmap_16_width,
   mupdf_icon_bitmap_16_height);
  xmask = XCreateBitmapFromData(xdpy, xwin,
   (char*)mupdf_icon_bitmap_16_mask_bits,
   mupdf_icon_bitmap_16_mask_width,
   mupdf_icon_bitmap_16_mask_height);
  if (xicon && xmask)
  {
   wmhints->icon_pixmap = xicon;
   wmhints->icon_mask = xmask;
   XSetWMHints(xdpy, xwin, wmhints);
  }
  XFree(wmhints);
 }

 classhint = XAllocClassHint();
 if (classhint)
 {
  classhint->res_name = "mupdf";
  classhint->res_class = "MuPDF";
  XSetClassHint(xdpy, xwin, classhint);
  XFree(classhint);
 }

 XSetWMProtocols(xdpy, xwin, &WM_DELETE_WINDOW, 1);

 x11fd = ConnectionNumber(xdpy);
}
