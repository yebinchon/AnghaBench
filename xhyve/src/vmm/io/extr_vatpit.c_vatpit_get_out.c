
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vatpit {int freq_sbt; struct channel* channel; } ;
struct channel {int mode; int now_sbt; int initial; } ;
typedef int sbintime_t ;



 int sbinuptime () ;

__attribute__((used)) static int
vatpit_get_out(struct vatpit *vatpit, int channel)
{
 struct channel *c;
 sbintime_t delta_ticks;
 int out;

 c = &vatpit->channel[channel];

 switch (c->mode) {
 case 128:
  delta_ticks = (sbinuptime() - c->now_sbt) / vatpit->freq_sbt;
  out = ((c->initial - delta_ticks) <= 0);
  break;
 default:
  out = 0;
  break;
 }

 return (out);
}
