
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ what; } ;
typedef TYPE_1__ EventRecord ;


 scalar_t__ EventAvail (int ,TYPE_1__*) ;
 int everyEvent ;
 int gui_mch_wait_for_chars (int ) ;
 scalar_t__ nullEvent ;

void
gui_mch_update(void)
{
    EventRecord theEvent;

    if (EventAvail(everyEvent, &theEvent))
 if (theEvent.what != nullEvent)
     gui_mch_wait_for_chars(0);
}
