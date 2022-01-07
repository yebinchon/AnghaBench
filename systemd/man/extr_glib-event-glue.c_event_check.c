
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_2__ {int event; } ;
typedef TYPE_1__ SDEventSource ;
typedef int GSource ;


 scalar_t__ sd_event_wait (int ,int ) ;

__attribute__((used)) static gboolean event_check(GSource *source) {
  return sd_event_wait(((SDEventSource *)source)->event, 0) > 0;
}
