
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gint ;
typedef int gboolean ;
struct TYPE_2__ {int event; } ;
typedef TYPE_1__ SDEventSource ;
typedef int GSource ;


 scalar_t__ sd_event_prepare (int ) ;

__attribute__((used)) static gboolean event_prepare(GSource *source, gint *timeout_) {
  return sd_event_prepare(((SDEventSource *)source)->event) > 0;
}
