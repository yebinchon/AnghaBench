
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vatpit {struct channel* channel; } ;
struct channel {int slatched; scalar_t__ mode; int status; int olbyte; } ;


 scalar_t__ TIMER_INTTC ;
 int TIMER_RB_LCTR ;
 int TIMER_RB_LSTATUS ;
 int TIMER_STS_OUT ;
 int pit_update_counter (struct vatpit*,struct channel*,int) ;
 scalar_t__ vatpit_get_out (struct vatpit*,int) ;

__attribute__((used)) static int
pit_readback1(struct vatpit *vatpit, int channel, uint8_t cmd)
{
 struct channel *c;

 c = &vatpit->channel[channel];





 if (!(cmd & TIMER_RB_LCTR) && !c->olbyte) {
  (void) pit_update_counter(vatpit, c, 1);
 }

 if (!(cmd & TIMER_RB_LSTATUS) && !c->slatched) {
  c->slatched = 1;





  if (c->mode == TIMER_INTTC && vatpit_get_out(vatpit, channel))
   c->status |= TIMER_STS_OUT;
  else
   c->status &= ~TIMER_STS_OUT;
 }

 return (0);
}
