
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int private; } ;
struct buffer {int data; } ;


 int diff_common_read (struct view*,int ,int ) ;
 int diff_done_highlight (int ) ;
 int opt_diff_highlight ;
 int report (char*,int ) ;

bool
pager_read(struct view *view, struct buffer *buf, bool force_stop)
{
 if (!buf) {
  if (!diff_done_highlight(view->private)) {
   report("Failed run the diff-highlight program: %s", opt_diff_highlight);
   return 0;
  }

  return 1;
 }

 return diff_common_read(view, buf->data, view->private);
}
