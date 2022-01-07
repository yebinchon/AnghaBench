
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int link; } ;
struct TYPE_14__ {int notify; } ;
struct TYPE_10__ {int tablet_tool_button; int tablet_tool_proximity; int tablet_tool_tip; int tablet_tool_axis; int touch_motion; int touch_up; int touch_down; int frame; int axis; int button; int motion_absolute; int motion; } ;
struct TYPE_9__ {int y; int x; } ;
struct wlr_cursor {struct wlr_cursor* cursor; int tablet_pads; int tablets; TYPE_5__ constraint_commit; TYPE_6__ request_set_cursor; TYPE_6__ tool_button; TYPE_2__ events; TYPE_6__ tool_proximity; TYPE_6__ tool_tip; TYPE_6__ tool_axis; TYPE_6__ touch_motion; TYPE_6__ touch_up; TYPE_6__ touch_down; TYPE_6__ frame; TYPE_6__ axis; TYPE_6__ button; TYPE_6__ motion_absolute; TYPE_6__ motion; int hide_source; struct sway_seat* seat; int y; TYPE_1__ previous; int x; } ;
struct sway_seat {TYPE_4__* wlr_seat; } ;
struct sway_cursor {struct sway_cursor* cursor; int tablet_pads; int tablets; TYPE_5__ constraint_commit; TYPE_6__ request_set_cursor; TYPE_6__ tool_button; TYPE_2__ events; TYPE_6__ tool_proximity; TYPE_6__ tool_tip; TYPE_6__ tool_axis; TYPE_6__ touch_motion; TYPE_6__ touch_up; TYPE_6__ touch_down; TYPE_6__ frame; TYPE_6__ axis; TYPE_6__ button; TYPE_6__ motion_absolute; TYPE_6__ motion; int hide_source; struct sway_seat* seat; int y; TYPE_1__ previous; int x; } ;
struct TYPE_16__ {int output_layout; } ;
struct TYPE_15__ {int wl_event_loop; } ;
struct TYPE_11__ {int request_set_cursor; } ;
struct TYPE_12__ {TYPE_3__ events; } ;


 struct wlr_cursor* calloc (int,int) ;
 int free (struct wlr_cursor*) ;
 int handle_cursor_axis ;
 int handle_cursor_button ;
 int handle_cursor_frame ;
 int handle_cursor_motion_absolute ;
 int handle_cursor_motion_relative ;
 int handle_request_set_cursor ;
 int handle_tool_axis ;
 int handle_tool_button ;
 int handle_tool_proximity ;
 int handle_tool_tip ;
 int handle_touch_down ;
 int handle_touch_motion ;
 int handle_touch_up ;
 int hide_notify ;
 TYPE_8__* root ;
 TYPE_7__ server ;
 int sway_assert (struct wlr_cursor*,char*) ;
 int wl_event_loop_add_timer (int ,int ,struct wlr_cursor*) ;
 int wl_list_init (int *) ;
 int wl_signal_add (int *,TYPE_6__*) ;
 int wlr_cursor_attach_output_layout (struct wlr_cursor*,int ) ;
 struct wlr_cursor* wlr_cursor_create () ;

struct sway_cursor *sway_cursor_create(struct sway_seat *seat) {
 struct sway_cursor *cursor = calloc(1, sizeof(struct sway_cursor));
 if (!sway_assert(cursor, "could not allocate sway cursor")) {
  return ((void*)0);
 }

 struct wlr_cursor *wlr_cursor = wlr_cursor_create();
 if (!sway_assert(wlr_cursor, "could not allocate wlr cursor")) {
  free(cursor);
  return ((void*)0);
 }

 cursor->previous.x = wlr_cursor->x;
 cursor->previous.y = wlr_cursor->y;

 cursor->seat = seat;
 wlr_cursor_attach_output_layout(wlr_cursor, root->output_layout);

 cursor->hide_source = wl_event_loop_add_timer(server.wl_event_loop,
   hide_notify, cursor);


 wl_signal_add(&wlr_cursor->events.motion, &cursor->motion);
 cursor->motion.notify = handle_cursor_motion_relative;

 wl_signal_add(&wlr_cursor->events.motion_absolute,
  &cursor->motion_absolute);
 cursor->motion_absolute.notify = handle_cursor_motion_absolute;

 wl_signal_add(&wlr_cursor->events.button, &cursor->button);
 cursor->button.notify = handle_cursor_button;

 wl_signal_add(&wlr_cursor->events.axis, &cursor->axis);
 cursor->axis.notify = handle_cursor_axis;

 wl_signal_add(&wlr_cursor->events.frame, &cursor->frame);
 cursor->frame.notify = handle_cursor_frame;

 wl_signal_add(&wlr_cursor->events.touch_down, &cursor->touch_down);
 cursor->touch_down.notify = handle_touch_down;

 wl_signal_add(&wlr_cursor->events.touch_up, &cursor->touch_up);
 cursor->touch_up.notify = handle_touch_up;

 wl_signal_add(&wlr_cursor->events.touch_motion,
  &cursor->touch_motion);
 cursor->touch_motion.notify = handle_touch_motion;

 wl_signal_add(&wlr_cursor->events.tablet_tool_axis,
  &cursor->tool_axis);
 cursor->tool_axis.notify = handle_tool_axis;

 wl_signal_add(&wlr_cursor->events.tablet_tool_tip, &cursor->tool_tip);
 cursor->tool_tip.notify = handle_tool_tip;

 wl_signal_add(&wlr_cursor->events.tablet_tool_proximity, &cursor->tool_proximity);
 cursor->tool_proximity.notify = handle_tool_proximity;

 wl_signal_add(&wlr_cursor->events.tablet_tool_button, &cursor->tool_button);
 cursor->tool_button.notify = handle_tool_button;

 wl_signal_add(&seat->wlr_seat->events.request_set_cursor,
   &cursor->request_set_cursor);
 cursor->request_set_cursor.notify = handle_request_set_cursor;

 wl_list_init(&cursor->constraint_commit.link);
 wl_list_init(&cursor->tablets);
 wl_list_init(&cursor->tablet_pads);

 cursor->cursor = wlr_cursor;

 return cursor;
}
