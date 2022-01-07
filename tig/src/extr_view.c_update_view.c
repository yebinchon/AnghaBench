
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct view {scalar_t__ lines; int start_time; int update_secs; int force_redraw; int pipe; TYPE_1__* ops; struct encoding* encoding; } ;
struct encoding {int dummy; } ;
struct buffer {int dummy; } ;
struct TYPE_2__ {int (* read ) (struct view*,struct buffer*,int) ;} ;


 struct encoding* default_encoding ;
 int encoding_convert (struct encoding*,struct buffer*) ;
 int end_update (struct view*,int) ;
 int io_can_read (int ,int) ;
 scalar_t__ io_eof (int ) ;
 scalar_t__ io_error (int ) ;
 scalar_t__ io_get (int ,struct buffer*,char,int) ;
 int io_strerror (int ) ;
 int redraw_view (struct view*) ;
 int redraw_view_dirty (struct view*) ;
 int redraw_view_from (struct view*,int ) ;
 int report (char*,...) ;
 scalar_t__ restore_view_position (struct view*) ;
 int stub1 (struct view*,struct buffer*,int) ;
 int time (int *) ;
 int update_view_title (struct view*) ;
 scalar_t__ view_is_displayed (struct view*) ;

bool
update_view(struct view *view)
{


 bool redraw = view->lines == 0;
 bool can_read = 1;
 struct encoding *encoding = view->encoding ? view->encoding : default_encoding;
 struct buffer line;

 if (!view->pipe)
  return 1;

 if (!io_can_read(view->pipe, 0)) {
  if (view->lines == 0 && view_is_displayed(view)) {
   time_t secs = time(((void*)0)) - view->start_time;

   if (secs > 1 && secs > view->update_secs) {
    if (view->update_secs == 0)
     redraw_view(view);
    update_view_title(view);
    view->update_secs = secs;
   }
  }
  return 1;
 }

 for (; io_get(view->pipe, &line, '\n', can_read); can_read = 0) {
  if (encoding && !encoding_convert(encoding, &line)) {
   report("Encoding failure");
   end_update(view, 1);
   return 0;
  }

  if (!view->ops->read(view, &line, 0)) {
   report("Allocation failure");
   end_update(view, 1);
   return 0;
  }
 }

 if (io_error(view->pipe)) {
  report("Failed to read: %s", io_strerror(view->pipe));
  end_update(view, 1);

 } else if (io_eof(view->pipe)) {
  end_update(view, 0);
 }

 if (restore_view_position(view))
  redraw = 1;

 if (!view_is_displayed(view))
  return 1;

 if (redraw || view->force_redraw)
  redraw_view_from(view, 0);
 else
  redraw_view_dirty(view);
 view->force_redraw = 0;



 update_view_title(view);
 return 1;
}
