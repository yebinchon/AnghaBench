
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vatpit {scalar_t__ freq_sbt; struct channel* channel; } ;
struct channel {scalar_t__ initial; scalar_t__ callout_sbt; int callout_arg; int callout; } ;
typedef scalar_t__ sbintime_t ;


 int C_ABSOLUTE ;
 int callout_reset_sbt (int *,scalar_t__,int ,int ,int *,int ) ;
 scalar_t__ sbinuptime () ;
 int vatpit_callout_handler ;

__attribute__((used)) static void
pit_timer_start_cntr0(struct vatpit *vatpit)
{
 struct channel *c;
 sbintime_t now, delta;

 c = &vatpit->channel[0];
 if (c->initial != 0) {
  delta = c->initial * vatpit->freq_sbt;
  c->callout_sbt = c->callout_sbt + delta;






  now = sbinuptime();
  if (c->callout_sbt < now)
   c->callout_sbt = now + delta;

  callout_reset_sbt(&c->callout, c->callout_sbt,
      0, vatpit_callout_handler, &c->callout_arg,
      C_ABSOLUTE);
 }
}
