
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winlink {int idx; } ;
struct window_pane {int id; } ;
struct spawn_context {char* name; int idx; int flags; TYPE_1__* item; struct window_pane* wp0; struct winlink* wl; struct session* s; } ;
struct session {int id; } ;
struct TYPE_2__ {int name; } ;


 int log_debug (char*,char const*,char const*,...) ;
 int xsnprintf (char*,int,char*,...) ;

__attribute__((used)) static void
spawn_log(const char *from, struct spawn_context *sc)
{
 struct session *s = sc->s;
 struct winlink *wl = sc->wl;
 struct window_pane *wp0 = sc->wp0;
 char tmp[128];
 const char *name;

 log_debug("%s: %s, flags=%#x", from, sc->item->name, sc->flags);

 if (wl != ((void*)0) && wp0 != ((void*)0))
  xsnprintf(tmp, sizeof tmp, "wl=%d wp0=%%%u", wl->idx, wp0->id);
 else if (wl != ((void*)0))
  xsnprintf(tmp, sizeof tmp, "wl=%d wp0=none", wl->idx);
 else if (wp0 != ((void*)0))
  xsnprintf(tmp, sizeof tmp, "wl=none wp0=%%%u", wp0->id);
 else
  xsnprintf(tmp, sizeof tmp, "wl=none wp0=none");
 log_debug("%s: s=$%u %s idx=%d", from, s->id, tmp, sc->idx);

 name = sc->name;
 if (name == ((void*)0))
  name = "none";
 log_debug("%s: name=%s", from, name);
}
