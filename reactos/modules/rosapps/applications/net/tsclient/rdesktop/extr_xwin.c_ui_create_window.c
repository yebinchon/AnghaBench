
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_21__ {char* res_name; char* res_class; int flags; int min_width; int max_width; int min_height; int max_height; } ;
typedef TYPE_3__ XSizeHints ;
typedef int XSetWindowAttributes ;
struct TYPE_19__ {scalar_t__ state; } ;
struct TYPE_22__ {scalar_t__ type; TYPE_1__ xvisibility; } ;
typedef TYPE_4__ XEvent ;
typedef TYPE_3__ XClassHint ;
typedef int Window ;
struct TYPE_20__ {scalar_t__ backstore; int * null_cursor; void* kill_atom; void* protocol_atom; void* mouse_in_wnd; void* focused; int * IC; int * IM; int * gc; int screen; int depth; int * create_bitmap_gc; int visual; } ;
struct TYPE_23__ {int width; int height; scalar_t__ xpos; int pos; scalar_t__ ypos; int Unobscured; TYPE_2__ xwin; int wnd; int display; scalar_t__ embed_wnd; scalar_t__ hide_decorations; int title; scalar_t__ ownbackstore; scalar_t__ fullscreen; } ;
typedef TYPE_6__ RDPCLIENT ;
typedef int BOOL ;


 int BlackPixelOfScreen (int ) ;
 int CWBackPixel ;
 int CWBackingStore ;
 int CWBorderPixel ;
 int CWColormap ;
 int CWOverrideRedirect ;
 void* False ;
 int HeightOfScreen (int ) ;
 int InputOutput ;
 int PMaxSize ;
 int PMinSize ;
 int PPosition ;
 int RootWindowOfScreen (int ) ;
 int True ;
 int VisibilityChangeMask ;
 scalar_t__ VisibilityNotify ;
 scalar_t__ VisibilityUnobscured ;
 int WidthOfScreen (int ) ;
 TYPE_3__* XAllocClassHint () ;
 TYPE_3__* XAllocSizeHints () ;
 void* XCreateGC (int ,int ,int ,int *) ;
 int * XCreateIC (int *,int ,int,int ,int ,int ,int ,int *) ;
 scalar_t__ XCreatePixmap (int ,int ,int,int,int ) ;
 int XCreateWindow (int ,int ,scalar_t__,scalar_t__,int,int,int ,int ,int ,int ,int,int *) ;
 int XFillRectangle (int ,scalar_t__,int *,int ,int ,int,int) ;
 int XFree (TYPE_3__*) ;
 int * XGetICValues (int *,int ,long*,int *) ;
 int XIMPreeditNothing ;
 int XIMStatusNothing ;
 void* XInternAtom (int ,char*,int ) ;
 int XMapWindow (int ,int ) ;
 int XMaskEvent (int ,int ,TYPE_4__*) ;
 int XNClientWindow ;
 int XNFilterEvents ;
 int XNFocusWindow ;
 int XNInputStyle ;
 int XReparentWindow (int ,int ,int ,int ,int ) ;
 int XSelectInput (int ,int ,long) ;
 int XSetClassHint (int ,int ,TYPE_3__*) ;
 int XSetForeground (int ,int *,int ) ;
 int XSetWMNormalHints (int ,int ,TYPE_3__*) ;
 int XSetWMProtocols (int ,int ,void**,int) ;
 int XStoreName (int ,int ,int ) ;
 int get_input_mask (TYPE_6__*,long*) ;
 int get_window_attribs (TYPE_6__*,int *) ;
 int mwm_hide_decorations (TYPE_6__*,int ) ;
 int * ui_create_cursor (TYPE_6__*,int ,int ,int,int,int*,int*) ;
 int ui_reset_clip (TYPE_6__*) ;

BOOL
ui_create_window(RDPCLIENT * This)
{
 uint8 null_pointer_mask[1] = { 0x80 };
 uint8 null_pointer_data[24] = { 0x00 };

 XSetWindowAttributes attribs;
 XClassHint *classhints;
 XSizeHints *sizehints;
 int wndwidth, wndheight;
 long input_mask, ic_input_mask;
 XEvent xevent;

 wndwidth = This->fullscreen ? WidthOfScreen(This->xwin.screen) : This->width;
 wndheight = This->fullscreen ? HeightOfScreen(This->xwin.screen) : This->height;


 if (This->xpos < 0 || (This->xpos == 0 && (This->pos & 2)))
  This->xpos = WidthOfScreen(This->xwin.screen) + This->xpos - This->width;
 if (This->ypos < 0 || (This->ypos == 0 && (This->pos & 4)))
  This->ypos = HeightOfScreen(This->xwin.screen) + This->ypos - This->height;

 get_window_attribs(This, &attribs);

 This->wnd = XCreateWindow(This->display, RootWindowOfScreen(This->xwin.screen), This->xpos, This->ypos, wndwidth,
         wndheight, 0, This->xwin.depth, InputOutput, This->xwin.visual,
         CWBackPixel | CWBackingStore | CWOverrideRedirect | CWColormap |
         CWBorderPixel, &attribs);

 if (This->xwin.gc == ((void*)0))
 {
  This->xwin.gc = XCreateGC(This->display, This->wnd, 0, ((void*)0));
  ui_reset_clip(This);
 }

 if (This->xwin.create_bitmap_gc == ((void*)0))
  This->xwin.create_bitmap_gc = XCreateGC(This->display, This->wnd, 0, ((void*)0));

 if ((This->ownbackstore) && (This->xwin.backstore == 0))
 {
  This->xwin.backstore = XCreatePixmap(This->display, This->wnd, This->width, This->height, This->xwin.depth);


  XSetForeground(This->display, This->xwin.gc, BlackPixelOfScreen(This->xwin.screen));
  XFillRectangle(This->display, This->xwin.backstore, This->xwin.gc, 0, 0, This->width, This->height);
 }

 XStoreName(This->display, This->wnd, This->title);

 if (This->hide_decorations)
  mwm_hide_decorations(This, This->wnd);

 classhints = XAllocClassHint();
 if (classhints != ((void*)0))
 {
  classhints->res_name = classhints->res_class = "rdesktop";
  XSetClassHint(This->display, This->wnd, classhints);
  XFree(classhints);
 }

 sizehints = XAllocSizeHints();
 if (sizehints)
 {
  sizehints->flags = PMinSize | PMaxSize;
  if (This->pos)
   sizehints->flags |= PPosition;
  sizehints->min_width = sizehints->max_width = This->width;
  sizehints->min_height = sizehints->max_height = This->height;
  XSetWMNormalHints(This->display, This->wnd, sizehints);
  XFree(sizehints);
 }

 if (This->embed_wnd)
 {
  XReparentWindow(This->display, This->wnd, (Window) This->embed_wnd, 0, 0);
 }

 get_input_mask(This, &input_mask);

 if (This->xwin.IM != ((void*)0))
 {
  This->xwin.IC = XCreateIC(This->xwin.IM, XNInputStyle, (XIMPreeditNothing | XIMStatusNothing),
     XNClientWindow, This->wnd, XNFocusWindow, This->wnd, ((void*)0));

  if ((This->xwin.IC != ((void*)0))
      && (XGetICValues(This->xwin.IC, XNFilterEvents, &ic_input_mask, ((void*)0)) == ((void*)0)))
   input_mask |= ic_input_mask;
 }

 XSelectInput(This->display, This->wnd, input_mask);
 XMapWindow(This->display, This->wnd);


 do
 {
  XMaskEvent(This->display, VisibilityChangeMask, &xevent);
 }
 while (xevent.type != VisibilityNotify);
 This->Unobscured = xevent.xvisibility.state == VisibilityUnobscured;

 This->xwin.focused = False;
 This->xwin.mouse_in_wnd = False;


 This->xwin.protocol_atom = XInternAtom(This->display, "WM_PROTOCOLS", True);
 This->xwin.kill_atom = XInternAtom(This->display, "WM_DELETE_WINDOW", True);
 XSetWMProtocols(This->display, This->wnd, &This->xwin.kill_atom, 1);


 if (This->xwin.null_cursor == ((void*)0))
  This->xwin.null_cursor = ui_create_cursor(This, 0, 0, 1, 1, null_pointer_mask, null_pointer_data);

 return True;
}
