
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {TYPE_1__* env; } ;
struct buffer {int data; } ;
struct TYPE_2__ {scalar_t__ goto_lineno; } ;


 int LINE_DEFAULT ;
 int pager_common_read (struct view*,int ,int ,int *) ;
 int select_view_line (struct view*,scalar_t__) ;

__attribute__((used)) static bool
blob_read(struct view *view, struct buffer *buf, bool force_stop)
{
 if (!buf) {
  if (view->env->goto_lineno > 0) {
   select_view_line(view, view->env->goto_lineno);
   view->env->goto_lineno = 0;
  }
  return 1;
 }

 return pager_common_read(view, buf->data, LINE_DEFAULT, ((void*)0));
}
