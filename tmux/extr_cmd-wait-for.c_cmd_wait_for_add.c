
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_channel {int name; int lockers; int waiters; scalar_t__ woken; scalar_t__ locked; } ;


 int RB_INSERT (int ,int *,struct wait_channel*) ;
 int TAILQ_INIT (int *) ;
 int log_debug (char*,int ) ;
 int wait_channels ;
 struct wait_channel* xmalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct wait_channel *
cmd_wait_for_add(const char *name)
{
 struct wait_channel *wc;

 wc = xmalloc(sizeof *wc);
 wc->name = xstrdup(name);

 wc->locked = 0;
 wc->woken = 0;

 TAILQ_INIT(&wc->waiters);
 TAILQ_INIT(&wc->lockers);

 RB_INSERT(wait_channels, &wait_channels, wc);

 log_debug("add wait channel %s", wc->name);

 return (wc);
}
