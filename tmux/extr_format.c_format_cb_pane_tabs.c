
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_4__ {int tabs; TYPE_1__* grid; } ;
struct window_pane {TYPE_2__ base; } ;
struct format_tree {struct window_pane* wp; } ;
struct format_entry {int value; } ;
struct evbuffer {int dummy; } ;
struct TYPE_3__ {scalar_t__ sx; } ;


 int EVBUFFER_DATA (struct evbuffer*) ;
 int EVBUFFER_LENGTH (struct evbuffer*) ;
 int bit_test (int ,scalar_t__) ;
 int evbuffer_add (struct evbuffer*,char*,int) ;
 int evbuffer_add_printf (struct evbuffer*,char*,scalar_t__) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int fatalx (char*) ;
 int xasprintf (int *,char*,int,int ) ;

__attribute__((used)) static void
format_cb_pane_tabs(struct format_tree *ft, struct format_entry *fe)
{
 struct window_pane *wp = ft->wp;
 struct evbuffer *buffer;
 u_int i;
 int size;

 if (wp == ((void*)0))
  return;

 buffer = evbuffer_new();
 if (buffer == ((void*)0))
  fatalx("out of memory");
 for (i = 0; i < wp->base.grid->sx; i++) {
  if (!bit_test(wp->base.tabs, i))
   continue;

  if (EVBUFFER_LENGTH(buffer) > 0)
   evbuffer_add(buffer, ",", 1);
  evbuffer_add_printf(buffer, "%u", i);
 }
 if ((size = EVBUFFER_LENGTH(buffer)) != 0)
  xasprintf(&fe->value, "%.*s", size, EVBUFFER_DATA(buffer));
 evbuffer_free(buffer);
}
