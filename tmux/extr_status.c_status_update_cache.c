
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {scalar_t__ statuslines; int statusat; int options; } ;


 scalar_t__ options_get_number (int ,char*) ;

void
status_update_cache(struct session *s)
{
 s->statuslines = options_get_number(s->options, "status");
 if (s->statuslines == 0)
  s->statusat = -1;
 else if (options_get_number(s->options, "status-position") == 0)
  s->statusat = 0;
 else
  s->statusat = 1;
}
