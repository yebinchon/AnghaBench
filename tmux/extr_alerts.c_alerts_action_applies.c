
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winlink {TYPE_1__* session; } ;
struct TYPE_2__ {struct winlink* curw; int options; } ;


 int ALERT_ANY ;
 int ALERT_CURRENT ;
 int ALERT_OTHER ;
 int options_get_number (int ,char const*) ;

__attribute__((used)) static int
alerts_action_applies(struct winlink *wl, const char *name)
{
 int action;







 action = options_get_number(wl->session->options, name);
 if (action == ALERT_ANY)
  return (1);
 if (action == ALERT_CURRENT)
  return (wl == wl->session->curw);
 if (action == ALERT_OTHER)
  return (wl != wl->session->curw);
 return (0);
}
