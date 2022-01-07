
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct winlink {int flags; TYPE_1__* window; struct session* session; } ;
struct session {int lastw; struct winlink* curw; } ;
struct TYPE_4__ {struct winlink* wl; } ;
struct TYPE_3__ {int flags; } ;


 struct winlink* TAILQ_FIRST (int *) ;
 int WINDOW_ZOOMED ;
 int WINLINK_ACTIVITY ;
 int WINLINK_BELL ;
 int WINLINK_SILENCE ;
 TYPE_2__ marked_pane ;
 scalar_t__ server_check_marked () ;

const char *
window_printable_flags(struct winlink *wl)
{
 struct session *s = wl->session;
 static char flags[32];
 int pos;

 pos = 0;
 if (wl->flags & WINLINK_ACTIVITY)
  flags[pos++] = '#';
 if (wl->flags & WINLINK_BELL)
  flags[pos++] = '!';
 if (wl->flags & WINLINK_SILENCE)
  flags[pos++] = '~';
 if (wl == s->curw)
  flags[pos++] = '*';
 if (wl == TAILQ_FIRST(&s->lastw))
  flags[pos++] = '-';
 if (server_check_marked() && wl == marked_pane.wl)
  flags[pos++] = 'M';
 if (wl->window->flags & WINDOW_ZOOMED)
  flags[pos++] = 'Z';
 flags[pos] = '\0';
 return (flags);
}
