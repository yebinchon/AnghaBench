
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct timeval {int dummy; } ;
struct TYPE_27__ {unsigned long id; int wnd; TYPE_10__* group; struct TYPE_27__* next; scalar_t__ outpos_height; scalar_t__ outpos_width; scalar_t__ outpos_yoffset; scalar_t__ outpos_xoffset; scalar_t__ outpos_serial; int outstanding_position; void* position_timer; scalar_t__ desktop; int state; scalar_t__ height; scalar_t__ width; scalar_t__ yoffset; scalar_t__ xoffset; scalar_t__ behind; } ;
typedef TYPE_2__ seamless_window ;
struct TYPE_28__ {char* res_name; char* res_class; int window_group; int flags; } ;
typedef TYPE_3__ XWMHints ;
typedef TYPE_3__ XSizeHints ;
typedef int XSetWindowAttributes ;
typedef TYPE_3__ XClassHint ;
typedef int Window ;
struct TYPE_26__ {TYPE_2__* seamless_windows; int kill_atom; int screen; int visual; int depth; int seamless_active; } ;
struct TYPE_29__ {int display; TYPE_1__ xwin; } ;
struct TYPE_25__ {int wnd; int refcnt; } ;
typedef TYPE_6__ RDPCLIENT ;


 int CWBackPixel ;
 int CWBackingStore ;
 int CWBorderPixel ;
 int CWColormap ;
 int False ;
 int InputOutput ;
 long PropertyChangeMask ;
 int RootWindowOfScreen (int ) ;
 unsigned long SEAMLESSRDP_CREATE_MODAL ;
 int SEAMLESSRDP_NOTYETMAPPED ;
 int USPosition ;
 int WindowGroupHint ;
 TYPE_3__* XAllocClassHint () ;
 TYPE_3__* XAllocSizeHints () ;
 TYPE_3__* XAllocWMHints () ;
 int XCreateWindow (int ,int ,int,int,int,int,int ,int ,int ,int ,int,int *) ;
 int XFree (TYPE_3__*) ;
 int XSelectInput (int ,int ,long) ;
 int XSetClassHint (int ,int ,TYPE_3__*) ;
 int XSetTransientForHint (int ,int ,int ) ;
 int XSetWMHints (int ,int ,TYPE_3__*) ;
 int XSetWMNormalHints (int ,int ,TYPE_3__*) ;
 int XSetWMProtocols (int ,int ,int *,int) ;
 int XStoreName (int ,int ,char*) ;
 int ewmh_set_window_modal (TYPE_6__*,int ) ;
 int ewmh_set_window_popup (TYPE_6__*,int ) ;
 int ewmh_set_wm_name (TYPE_6__*,int ,char*) ;
 int get_input_mask (TYPE_6__*,long*) ;
 int get_window_attribs (TYPE_6__*,int *) ;
 int mwm_hide_decorations (TYPE_6__*,int ) ;
 TYPE_10__* sw_find_group (TYPE_6__*,unsigned long,int ) ;
 TYPE_2__* sw_get_window_by_id (TYPE_6__*,unsigned long) ;
 int timerclear (void*) ;
 int warning (char*,unsigned long) ;
 void* xmalloc (int) ;

void
ui_seamless_create_window(RDPCLIENT * This, unsigned long id, unsigned long group, unsigned long parent,
     unsigned long flags)
{
 Window wnd;
 XSetWindowAttributes attribs;
 XClassHint *classhints;
 XSizeHints *sizehints;
 XWMHints *wmhints;
 long input_mask;
 seamless_window *sw, *sw_parent;

 if (!This->xwin.seamless_active)
  return;


 sw = sw_get_window_by_id(This, id);
 if (sw)
  return;

 get_window_attribs(This, &attribs);
 wnd = XCreateWindow(This->display, RootWindowOfScreen(This->xwin.screen), -1, -1, 1, 1, 0, This->xwin.depth,
       InputOutput, This->xwin.visual,
       CWBackPixel | CWBackingStore | CWColormap | CWBorderPixel, &attribs);

 XStoreName(This->display, wnd, "SeamlessRDP");
 ewmh_set_wm_name(This, wnd, "SeamlessRDP");

 mwm_hide_decorations(This, wnd);

 classhints = XAllocClassHint();
 if (classhints != ((void*)0))
 {
  classhints->res_name = "rdesktop";
  classhints->res_class = "SeamlessRDP";
  XSetClassHint(This->display, wnd, classhints);
  XFree(classhints);
 }


 sizehints = XAllocSizeHints();
 if (sizehints != ((void*)0))
 {
  sizehints->flags = USPosition;
  XSetWMNormalHints(This->display, wnd, sizehints);
  XFree(sizehints);
 }


 if (parent == 0xFFFFFFFF)
 {
  XSetTransientForHint(This->display, wnd, RootWindowOfScreen(This->xwin.screen));


  ewmh_set_window_popup(This, wnd);
 }

 else if (parent != 0x00000000)
 {
  sw_parent = sw_get_window_by_id(This, parent);
  if (sw_parent)
   XSetTransientForHint(This->display, wnd, sw_parent->wnd);
  else
   warning("ui_seamless_create_window: No parent window 0x%lx\n", parent);
 }

 if (flags & SEAMLESSRDP_CREATE_MODAL)
 {


  if (parent == 0x00000000)
   XSetTransientForHint(This->display, wnd, RootWindowOfScreen(This->xwin.screen));
  ewmh_set_window_modal(This, wnd);
 }



 get_input_mask(This, &input_mask);
 input_mask |= PropertyChangeMask;

 XSelectInput(This->display, wnd, input_mask);




 XSetWMProtocols(This->display, wnd, &This->xwin.kill_atom, 1);

 sw = xmalloc(sizeof(seamless_window));
 sw->wnd = wnd;
 sw->id = id;
 sw->behind = 0;
 sw->group = sw_find_group(This, group, False);
 sw->group->refcnt++;
 sw->xoffset = 0;
 sw->yoffset = 0;
 sw->width = 0;
 sw->height = 0;
 sw->state = SEAMLESSRDP_NOTYETMAPPED;
 sw->desktop = 0;
 sw->position_timer = xmalloc(sizeof(struct timeval));
 timerclear(sw->position_timer);

 sw->outstanding_position = False;
 sw->outpos_serial = 0;
 sw->outpos_xoffset = sw->outpos_yoffset = 0;
 sw->outpos_width = sw->outpos_height = 0;

 sw->next = This->xwin.seamless_windows;
 This->xwin.seamless_windows = sw;


 wmhints = XAllocWMHints();
 if (wmhints)
 {
  wmhints->flags = WindowGroupHint;
  wmhints->window_group = sw->group->wnd;
  XSetWMHints(This->display, sw->wnd, wmhints);
  XFree(wmhints);
 }
}
