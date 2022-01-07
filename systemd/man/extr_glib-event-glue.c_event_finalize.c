
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event; } ;
typedef TYPE_1__ SDEventSource ;
typedef int GSource ;


 int sd_event_unref (int ) ;

__attribute__((used)) static void event_finalize(GSource *source) {
  sd_event_unref(((SDEventSource *)source)->event);
}
